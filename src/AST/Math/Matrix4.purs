module AST.Math.Matrix4 where

import Data.Variant (inj)
import Type.Proxy (Proxy(..))
import TSAST as T

ast :: T.SourceFile
ast = T.SourceFile
  { importDeclaration:
      [ T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "Vector3" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./Vector3'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "Euler" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./Euler'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "Quaternion" }
                              }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./Quaternion'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "Matrix" } }
                          , T.ImportSpecifier
                              { identifier: T.Identifier { text: "Matrix3" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./Matrix3'" }
          }
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "typeAliasDeclaration")
        [ T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "Matrix4Tuple" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "tupleType")
                ( T.TupleType
                    { numberKeyword:
                        [ T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        ]
                    }
                )
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }