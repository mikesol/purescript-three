module AST.Utils where

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
                              { identifier: T.Identifier { text: "Color" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./math/Color'" }
          }
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "typeAliasDeclaration")
        [ T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "ColorRepresentation" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "unionType")
                ( T.UnionType
                    { typeReference:
                        [ T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "Color" })
                            , typeReference: []
                            , anyKeyword: Nothing
                            , unionType: Nothing
                            , arrayType: Nothing
                            , typeLiteral: Nothing
                            , thisType: Nothing
                            , numberKeyword: Nothing
                            , voidKeyword: Nothing
                            , booleanKeyword: Nothing
                            , functionType: Nothing
                            }
                        ]
                    , literalType: []
                    , numberKeyword: Just (T.NumberKeyword { text: "number" })
                    , stringKeyword: Just (T.StringKeyword { text: "string" })
                    , undefinedKeyword: Nothing
                    , objectKeyword: Nothing
                    , parenthesizedType: Nothing
                    , arrayType: []
                    , typeLiteral: Nothing
                    , booleanKeyword: Nothing
                    }
                )
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }