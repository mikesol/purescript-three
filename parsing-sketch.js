var ts = require("typescript");
var fs = require("fs");

const filename = "test.ts";
const code = fs
  .readFileSync("../DefinitelyTyped/types/three/src/geometries/ExtrudeGeometry.d.ts")
  .toString();

const sourceFile = ts.createSourceFile(filename, code, ts.ScriptTarget.Latest);

function printRecursiveFrom(node, indentLevel, sourceFile) {
  const indentation = "-".repeat(indentLevel);
  const syntaxKind = ts.SyntaxKind[node.kind];
  const nodeText = node.getText(sourceFile);
  console.log(`${indentation}${syntaxKind} @ ${nodeText}`);

  node.forEachChild((child) =>
    printRecursiveFrom(child, indentLevel + 1, sourceFile)
  );
}

var parseType = function (node, sourceFile, literal) {
  if (node.kind === ts.SyntaxKind.NumberKeyword) {
    return { type: "number", value: {} };
  } else if (node.kind === ts.SyntaxKind.StringKeyword) {
    return { type: "string", value: {} };
  } else if (node.kind === ts.SyntaxKind.UnionType) {
    var value = [];
    node.forEachChild((child) => {
      value.push(parseType(child, sourceFile, literal));
    });
    return { type: "union", value: value };
  } else if (node.kind === ts.SyntaxKind.ArrayType) {
    var value = {};
    node.forEachChild((child) => {
      value.v = parseType(child, sourceFile, literal);
    });
    if (!value.v) {
      throw new Error(
        `could not get a valid array type for ${node.kind} @ ${node.getText(
          sourceFile
        )}`
      );
    }
    return { type: "array", value: value.v };
  } else if (node.kind === ts.SyntaxKind.AnyKeyword) {
    return { type: "any", value: {} };
  } else if (node.kind === ts.SyntaxKind.NullKeyword) {
    if (!literal) {
      throw new Error(
        `null can only be literal for ${node.kind} @ ${node.getText(
          sourceFile
        )}`
      );
    }
    return { type: "null", value: {} };
  } else if (node.kind === ts.SyntaxKind.TrueKeyword) {
    if (!literal) {
      throw new Error(
        `true can only be literal for ${node.kind} @ ${node.getText(
          sourceFile
        )}`
      );
    }
    return { type: "true_", value: {} };
  } else if (node.kind === ts.SyntaxKind.FalseKeyword) {
    if (!literal) {
      throw new Error(
        `false can only be literal for ${node.kind} @ ${node.getText(
          sourceFile
        )}`
      );
    }
    return { type: "false_", value: {} };
  } else if (node.kind === ts.SyntaxKind.LiteralType) {
    var value = {};
    node.forEachChild((child) => {
      value.v = parseType(child, sourceFile, true);
    });
    if (!value.v) {
      throw new Error(
        `could not get a valid literal type for ${node.kind} @ ${node.getText(
          sourceFile
        )}`
      );
    }
    return { type: "literal", value: value.v };
  } else if (node.kind === ts.SyntaxKind.TypeReference) {
    var value = {};
    node.forEachChild((child) => {
      if (child.kind !== ts.SyntaxKind.Identifier) {
        throw new Error(
          `could not get identifier while in ${node.kind} @ ${node.getText(
            sourceFile
          )}`
        );
      }
      value.v = node.getText(sourceFile);
    });
    if (!value.v) {
      throw new Error(
        `could not get a valid type reference identifier for ${
          node.kind
        } @ ${node.getText(sourceFile)}`
      );
    }
    return { type: "typeReference", value: value.v };
  } else {
    throw new Error(
      `could not get a valid type for ${node.kind} @ ${node.getText(
        sourceFile
      )}`
    );
  }
};

var parseTypeAliasDeclaration = function (node, sourceFile) {
  var out = {};
  node.forEachChild((child) => {
    if (child.kind === ts.SyntaxKind.Identifier) {
      out.identifier = child.getText(sourceFile);
    } else {
      out.type_ = parseType(child, sourceFile, false);
    }
  });
  return out;
};

var parseEnumDeclaration = function (node, sourceFile) {
  var out = {};
  node.forEachChild((child) => {
    if (child.kind === ts.SyntaxKind.Identifier) {
      out.name = child.getText(sourceFile);
    } else {
      throw new Error(
        `could not extract a enum definition for ${
          child.kind
        } @ ${child.getText(sourceFile)}`
      );
    }
  });
  return out;
};

var parseFirstStatement = function (node, sourceFile) {
  var out = {};
  node.forEachChild((child0) => {
    if (child0.kind === ts.SyntaxKind.ExportKeyword) {
      child0.forEachChild((child1) => {
        if (child1.kind === ts.SyntaxKind.VariableDeclarationList) {
          child1.forEachChild((child2) => {
            if (child2.kind === ts.SyntaxKind.VariableDeclaration) {
              child2.forEachChild((child3) => {
                if (child3.kind === ts.SyntaxKind.Identifier) {
                  out.identifier = child3.getText(sourceFile);
                } else {
                  out.type_ = parseType(child3, sourceFile, false);
                }
              });
            } else {
              throw new Error(
                `could not parse child of variable decl list ${
                  child2.kind
                } @ ${child2.getText(sourceFile)}`
              );
            }
          });
        } else {
          throw new Error(
            `could not parse child of export kw ${
              child1.kind
            } @ ${child1.getText(sourceFile)}`
          );
        }
      });
    } else {
      throw new Error(
        `could not parse child of first statement ${
          child0.kind
        } @ ${child0.getText(sourceFile)}`
      );
    }
  });
  return out;
};

var parseImportDeclaration = function (node, sourceFile) {
  var out = {};
  node.forEachChild((child0) => {
    if (child0.kind !== ts.SyntaxKind.StringLiteral) {
      out.stringLiteral = child0.getText(sourceFile);
    } else if (child0.kind !== ts.SyntaxKind.ImportClause) {
      child0.forEachChild((child1) => {
        if (child1.kind !== ts.SyntaxKind.Identifier) {
          out.importClause = {
            type: "identifier",
            value: child1.getText(sourceFile),
          };
        } else if (child1.kind !== ts.SyntaxKind.NamedImports) {
          var value = [];
          child1.forEachChild((child2) => {
            child2.forEachChild((child3) => {
              if (child3.kind !== ts.SyntaxKind.Identifier) {
                throw new Error(
                  `could not parse Identifier ${child3.kind} @ ${child3.getText(
                    sourceFile
                  )}`
                );
              }
              value.push(child3.getText(sourceFile));
            });
          });
          out.importClause = {
            type: "namedImports",
            value: value,
          };
        } else if (child1.kind !== ts.SyntaxKind.NamespaceImport) {
          child1.forEachChild((child2) => {
            out.importClause = {
              type: "namespaceImport",
              value: child2.getText(sourceFile),
            };
          });
        } else {
          throw new Error(
            `could not parse ImportClause file ${
              child1.kind
            } @ ${child1.getText(sourceFile)}`
          );
        }
      });
    } else {
      throw new Error(
        `could not parse ImportDeclaration file ${
          child0.kind
        } @ ${child0.getText(sourceFile)}`
      );
    }
  });
};

var parse_ = function (node, sourceFile) {
  if (node.kind !== ts.SyntaxKind.SourceFile) {
    throw new Error(
      `could not parse source file ${node.kind} @ ${node.getText(sourceFile)}`
    );
  }
  var out = [];
  node.forEachChild((child) => {
    if (child.kind === ts.SyntaxKind.FirstStatement) {
      out.push({
        type: "constDeclaration",
        value: parseFirstStatement(child, sourceFile),
      });
    } else if (child.kind === ts.SyntaxKind.TypeAliasDeclaration) {
      out.push({
        type: "typeAliasDeclaration",
        value: out.push(parseTypeAliasDeclaration(child, sourceFile)),
      });
    } else if (child.kind === ts.SyntaxKind.ImportDeclaration) {
      out.push({
        type: "importDeclaration",
        value: out.push(parseImportDeclaration(child, sourceFile)),
      });
    } else if (child.kind === ts.SyntaxKind.EnumDeclaration) {
      out.push({
        type: "enumDeclaration",
        value: out.push(parseEnumDeclaration(child, sourceFile)),
      });
    } else if (child.kind === ts.SyntaxKind.ClassDeclaration) {
      out.push({
        type: "classDeclaration",
        value: out.push(parseClassDeclaration(child, sourceFile)),
      });
    } else if (child.kind === ts.SyntaxKind.InterfaceDeclaration) {
      out.push({
        type: "interfaceDeclaration",
        value: out.push(parseInterfaceDeclaration(child, sourceFile)),
      });
    } else if (child.kind === ts.SyntaxKind.EndOfFileToken) {
    } else {
      throw new Error(
        `could not parse child of source file ${child.kind} @ ${node.getText(
          sourceFile
        )}`
      );
    }
  });
  return out;
};

var parse = function (node) {
  return parse_(node, node);
};

// var out = parse(sourceFile);
printRecursiveFrom(sourceFile, 0, sourceFile);
// const sourceFile2 = ts.createSourceFile(
//   filename,
//   "enum Foo {};",
//   ts.ScriptTarget.Latest
// );
// printRecursiveFrom(sourceFile2, 0, sourceFile2);
