module AST.Objects.LineSegments where

import Data.Maybe (Maybe(..))
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
                              { identifier: T.Identifier { text: "Material" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./../materials/Material'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "Line" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./Line'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier
                                  { text: "BufferGeometry" }
                              }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'../core/BufferGeometry'" }
          }
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "firstStatement")
        [ T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "LineStrip" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "numberKeyword")
                          (T.NumberKeyword { text: "number" })
                    }
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "LinePieces" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "numberKeyword")
                          (T.NumberKeyword { text: "number" })
                    }
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }