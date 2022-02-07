var ts = require("typescript");
var fs = require("fs");
var path = require("path");
const FileHound = require("filehound");
var PATH = "../DefinitelyTyped/types/three/src";

function makeRecursiveForm_(node, sourceFile) {
  var out = {};
  const syntaxKind = ts.SyntaxKind[node.kind];
  const nodeText = node.getText(sourceFile);
  out.tp = `${syntaxKind}`;
  out.txt = `${nodeText}`;
  out.kids = [];
  node.forEachChild((child) => {
    out.kids.push(makeRecursiveForm_(child, sourceFile));
  });
  return out;
}

function makeRecursiveForm(node) {
  return makeRecursiveForm_(node, node);
}

const files = FileHound.create()
  .paths(PATH)
  .ext("ts")
  .find();

files.then((paths) =>
  paths.map((p) => {
    const filename = "test.ts";
    const code = fs.readFileSync(p).toString();

    const sourceFile = ts.createSourceFile(
      filename,
      code,
      ts.ScriptTarget.Latest
    );
    const rf = makeRecursiveForm(sourceFile);
    const ofi = "tmp" + p.replace(PATH, "");
    if (!fs.existsSync(path.dirname(ofi))) {
      fs.mkdirSync(path.dirname(ofi));
    }
    fs.writeFileSync(ofi.replace('.d.ts','.json'), JSON.stringify(rf, null, 2));
  })
);
