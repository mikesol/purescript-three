import os
import json
PATH = "tmp"
types = {}


class Variant:
    def __init__(self, sub):
        self.subs = [sub]


class Opt:
    def __init__(self, sub):
        self.sub = sub


class Singleton:
    def __init__(self, sub):
        self.sub = sub


class Many:
    def __init__(self, sub):
        self.sub = sub


def get_current_judgement(v, judgements):
    for j in judgements:
        if isinstance(j, Variant):
            for x in j.subs:
                if x.sub == v:
                    return j
        else:
            if j.sub == v:
                return j
    return None


def get_variant_group(judgements):
    for j in judgements:
        if isinstance(j, Variant):
            return j
    return None


def upgrade_to_many(cj, js):
    for x in range(len(js)):
        if js[x] == cj:
            js[x] = Many(cj.sub)


def downgrade_to_opt(cj, js):
    for x in range(len(js)):
        if js[x] == cj:
            js[x] = Opt(cj.sub)


def downgrade_to_variant(cj, js):
    for x in range(len(js)):
        if js[x] == cj:
            o = Variant(js[x])
            js[x] = o
            return o


def get_uninhabited_variant_groups(all, judgements):
    out = []
    for x in judgements:
        if isinstance(x, Variant):
            if len(set(x.subs).intersection(all)) == 0:
                out.append(x)
    return out


def get_disappearing_singletons(all, judgements):
    out = []
    for x in judgements:
        if isinstance(x, Singleton):
            if x.sub not in all:
                out.append(x)
    return out


def refine_judgements(all, judgements, first):
    tps = [x['tp'] for x in all]
    for x in range(len(all)):
        kid = all[x]
        tp = kid['tp']
        current_judgement = get_current_judgement(tp, judgements)
        if current_judgement is not None:
            # if already a list, keep as list
            if isinstance(current_judgement, Many):
                pass
            # if already a singleton
            elif isinstance(current_judgement, Singleton):
                # glance ahead
                if tps.count(tp) > 1:
                    upgrade_to_many(current_judgement, judgements)
            # if already optional
            elif isinstance(current_judgement, Opt):
                # glance ahead
                if tps.count(tp) > 1:
                    upgrade_to_many(current_judgement, judgements)
            # if already part of variant group
            elif isinstance(current_judgement, Variant):
                var_judgement = get_current_judgement(
                    tp, current_judgement.subs)
                if var_judgement is not None:
                    # if already a list, keep as list
                    if isinstance(var_judgement, Many):
                        pass
                    # if already a singleton
                    elif isinstance(var_judgement, Singleton):
                        # glance ahead
                        if tps.count(tp) > 1:
                            upgrade_to_many(
                                var_judgement, current_judgement.subs)
                    # if already optional
                    else:
                        raise ValueError(
                            "Cannot work with variant judgement "+str(tp)+" "+str(current_judgement))
                else:
                    raise ValueError(
                        "Cannot work with variant judgement "+str(tp)+" "+str(current_judgement))
            else:
                raise ValueError('cannot treat '+str(kid))
        else:
            uninhabited_variant_groups = get_uninhabited_variant_groups(
                tps, judgements)
            disappearing_singletons = get_disappearing_singletons(
                tps, judgements)
            # if first,
            if first:
                # if more coming up, make list
                if tps.count(tp) > 1:
                    judgements.append(Many(tp))
                else:
                    # else add singleton to judgements
                    judgements.append(Singleton(tp))
            # if there is a variant group _and_ none of the other variants are present
            elif len(uninhabited_variant_groups) > 0:
                if len(uninhabited_variant_groups) != 1:
                    raise ValueError(
                        "Cannot deal with multiple uninhabited variants")
                if tps.count(tp) > 1:
                    uninhabited_variant_groups[0].subs.append(Many(tp))
                else:
                    # else add singleton to judgements
                    uninhabited_variant_groups[0].subs.append(Singleton(tp))
            # else if a singleton is present in untreated
            elif len(disappearing_singletons) > 0:
                if len(disappearing_singletons) != 1:
                    raise ValueError(
                        "Cannot deal with multiple uninhabited variants")
                # make singleton variant
                # subsume this into variant
                v = downgrade_to_variant(
                    disappearing_singletons[0], judgements)
                if tps.count(tp) > 1:
                    v.subs.append(Many(tp))
                else:
                    # else add singleton to judgements
                    v.subs.append(Singleton(tp))
            else:
                # else make optional
                judgements.append(Opt(tp))
    for x in range(len(judgements)):
        # if something was untreated and it was a singleton
        if isinstance(judgements[x], Singleton) and judgements[x].sub not in [y['tp'] for y in all]:
            downgrade_to_opt(judgements[x], judgements)


def build_judgements(j):
    tp = j['tp']
    not_seen_yet = tp not in types
    if not_seen_yet:
        types[tp] = []
    refine_judgements(j['kids'], types[tp], not_seen_yet)
    for kid in j['kids']:
        build_judgements(kid)


for root, dirs, files in os.walk(PATH, topdown=False):
    for name in files:
        fn = os.path.join(root, name)
        with open(fn, 'r') as ifi:
            j = json.loads(ifi.read())
            build_judgements(j)


def lc(y): return y[0].lower()+y[1:]


def makeDef(y):
    return '%s :: Array %s' % (lc(y.sub), y.sub) if isinstance(y, Many) else '%s :: %s' % (lc(y.sub), y.sub)if isinstance(y, Singleton) else '%s :: Maybe %s' % (lc(y.sub), y.sub) if isinstance(y, Opt) else '%s :: Variant (%s)' % ('_or_'.join([lc(x.sub) for x in y.subs]), ', '.join([makeDef(x) for x in y.subs]))


psDefs = []
for k, v in types.items():
    if len(v) == 0:
        psDefs.append('newtype %s = %s { text :: String }' % (k, k))
    else:
        psDefs.append(
            ('newtype %s = %s { ' % (k, k)) + ', '.join([makeDef(y) for y in v]) + ' }')

with open('src/TSAST.purs', 'w') as ofi:
    ofi.write('''module TSAST where

import Data.Maybe (Maybe)
import Data.Variant (Variant)
'''+('\n'.join(psDefs)))
