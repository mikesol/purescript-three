# purescript-three

Yet another [three.js](https://threejs.org) PureScript.

## Why this one will stay maintained

Unlike other `three.js` bindings, the author of this package is well too aware of the dangers of doing a massive FFI binge on a popular JS package, only to lose motivation over time, letting their work fall into irreparable disarray and the package into oblivion.

Rather than promising to overcome this laziness, I'm leaning into it. The idea of this port is to use `.d.ts` from [`@types/three`](https://www.npmjs.com/package/@types/three) to autogenerate the whole thing for multiple versions of three.js. Whenever a new version drops, a new binding can be generated, and only when it contains something too exotic for the parser to handle will the repo be updated.
