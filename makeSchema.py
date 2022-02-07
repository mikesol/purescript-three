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
    x = 0
    while True:
        if x == len(judgements): break
        # if something was untreated and it was a singleton
        if isinstance(judgements[x], Singleton) and judgements[x].sub not in [y['tp'] for y in all]:
            downgrade_to_opt(judgements[x], judgements)
            x += 1
        # if something was untreated and it was a variant
        elif isinstance(judgements[x], Variant) and len(set([m.sub for m in judgements[x].subs]).intersection([y['tp'] for y in all])) == 0:
            jx = judgements[x]
            del judgements[x]
            judgements += [y if isinstance(y, Many) else Opt(y.sub) for y in jx.subs]
            x = 0
        else: x += 1


def build_judgements(j):
    tp = j['tp']
    not_seen_yet = tp not in types
    if not_seen_yet:
        types[tp] = []
    #if tp == 'UnionType':
    #  print(tp, [x['tp'] for x in j['kids']], types[tp])
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
def uc(y): return y[0].upper()+y[1:]


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


for x in psDefs:
    with open('.holes', 'w') as ofi:
        for x in psDefs:
            a = x.split(' ')[1]
            ofi.write('parse%s :: forall e. T.%s -> MWriter (Declaration e)\nparse%s (T.%s v) = ?hole\n\n' % (a,a,a,a))

def makeKids(par, kids, judgements):
    out = []
    tps = [x['tp'] for x in kids]
    for judgement in judgements:
        if isinstance(judgement, Opt):
            out.append('%s: %s' % (lc(judgement.sub), 'Nothing' if judgement.sub not in tps else 'Just (%s)' % makePs(
                [z for z in kids if z['tp'] == judgement.sub][0])))
        elif isinstance(judgement, Singleton):
            out.append('%s: %s' % (lc(judgement.sub), makePs(
                [z for z in kids if z['tp'] == judgement.sub][0])))
        elif isinstance(judgement, Many):
            out.append('%s: %s' % (lc(judgement.sub), '[%s]' % ', '.join(
                [makePs(z) for z in kids if z['tp'] == judgement.sub])))
        else:
            # print(par, tps, [x.sub for x in judgement.subs])
            sg = [x for x in tps if x
                  in [z.sub for z in judgement.subs]][0]
            ch = [z for z in judgement.subs if z.sub == sg][0]
            out.append('%s: inj (Proxy :: Proxy "%s") %s' % ('_or_'.join([lc(x.sub) for x in judgement.subs]), lc(sg), ('(%s)' % makePs(
                [y for y in kids if y['tp'] == sg][0])) if isinstance(ch, Singleton) else '[%s]' % ', '.join([makePs(y) for y in kids if y['tp'] == sg])))
    return ', '.join(out)


def makePs(j):
    tp = j['tp']
    return 'T.'+tp + ' { ' + ('text: "%s"' % j['txt'] if len(types[tp]) == 0 else makeKids(tp, j['kids'], types[tp])) + ' }'


for root, dirs, files in os.walk(PATH, topdown=False):
    for name in files:
        fn = os.path.join(root, name)
        ofn = ('/'.join([uc(x) for x in fn.split('/')])
               ).replace('Tmp', 'src/AST').replace('.json', '.purs')
        with open(fn, 'r') as ifi:
            j = json.loads(ifi.read())
            if not os.path.exists(os.path.dirname(ofn)):
                os.makedirs(os.path.dirname(ofn))
            with open(ofn, 'w') as ofi:
                mps = makePs(j)
                ofi.write('\n'.join(['module %s where' % (ofn.replace('src/', '').replace('/', '.').replace('.purs','')), '', 'import Data.Maybe (Maybe(..))' if 'Just ' in mps or 'Nothing' in mps else '', 'import Data.Variant (inj)', 'import Type.Proxy (Proxy(..))', 'import TSAST as T', '', 'ast :: T.SourceFile', 'ast = '+mps]))

with open('.imports', 'w') as ofi:
    for root, dirs, files in os.walk(PATH, topdown=False):
        for name in files:
            fn = os.path.join(root, name)
            ofn = ('/'.join([uc(x) for x in fn.split('/')])
                ).replace('Tmp', 'src/AST').replace('.json', '.purs')
            x = ofn.replace('src/', '').replace('/', '.').replace('.purs','')
            ofi.write('\n'.join(['import %s as %s\n' % (x,  x.split('.')[-1])]))
    ofi.write('asts :: Map String T.SourceFile\nasts = Map.fromFoldable [\n')
    for root, dirs, files in os.walk(PATH, topdown=False):
        for name in files:
            fn = os.path.join(root, name)
            ofn = ('/'.join([uc(x) for x in fn.split('/')])
                ).replace('Tmp', 'src/AST').replace('.json', '.purs')
            x = ofn.replace('src/', '').replace('/', '.').replace('.purs','')
            ofi.write('\n'.join(['  "%s" /\ %s.ast,\n' % (x,  x.split('.')[-1])]))
    ofi.write('  ]\n')
