module AST.Geometries.EdgesGeometry where

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
      inj (Proxy :: Proxy "classDeclaration")
        [ T.ClassDeclaration
            { exportKeyword: Just (T.ExportKeyword { text: "export" })
            , identifier: T.Identifier { text: "EdgesGeometry" }
            , heritageClause: Just
                ( T.HeritageClause
                    { expressionWithTypeArguments: T.ExpressionWithTypeArguments
                        { identifier: T.Identifier { text: "BufferGeometry" }
                        , typeReference: []
                        }
                    }
                )
            , constructor:
                [ T.Constructor
                    { parameter:
                        [ T.Parameter
                            { identifier: T.Identifier { text: "geometry" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier
                                { text: "thresholdAngle" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        ]
                    }
                ]
            , propertyDeclaration:
                [ T.PropertyDeclaration
                    { identifier: T.Identifier { text: "type" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "stringKeyword")
                          (T.StringKeyword { text: "string" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "parameters" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "typeLiteral")
                          ( T.TypeLiteral
                              { indexSignature: Nothing
                              , propertySignature:
                                  [ T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "geometry" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeReference")
                                            ( T.TypeReference
                                                { identifier_or_firstNode_or_stringKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "identifier"
                                                      )
                                                      ( T.Identifier
                                                          { text:
                                                              "TBufferGeometry"
                                                          }
                                                      )
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
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "thresholdAngle" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "numberKeyword")
                                            (T.NumberKeyword { text: "number" })
                                      }
                                  ]
                              }
                          )
                    }
                ]
            , methodDeclaration: []
            , typeParameter:
                [ T.TypeParameter
                    { identifier: T.Identifier { text: "TBufferGeometry" }
                    , typeReference:
                        [ T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "BufferGeometry" })
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
                        , T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "BufferGeometry" })
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
                    , unionType: []
                    , indexedAccessType: Nothing
                    , anyKeyword: Nothing
                    , objectKeyword: Nothing
                    }
                ]
            , setAccessor: Nothing
            , getAccessor: []
            , firstContextualKeyword: Nothing
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }