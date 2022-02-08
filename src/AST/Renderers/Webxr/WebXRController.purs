module AST.Renderers.Webxr.WebXRController where

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
                              { identifier: T.Identifier { text: "Group" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'../../objects/Group'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "XREventType" }
                              }
                          , T.ImportSpecifier
                              { identifier: T.Identifier { text: "XRFrame" } }
                          , T.ImportSpecifier
                              { identifier: T.Identifier
                                  { text: "XRInputSource" }
                              }
                          , T.ImportSpecifier
                              { identifier: T.Identifier
                                  { text: "XRReferenceSpace" }
                              }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./WebXR'" }
          }
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "typeAliasDeclaration")
        [ T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "XRControllerEventType" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "unionType")
                ( T.UnionType
                    { typeReference:
                        [ T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "XREventType" })
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
                    , literalType:
                        [ T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'disconnected'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'connected'" })
                            }
                        ]
                    , numberKeyword: Nothing
                    , stringKeyword: Nothing
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