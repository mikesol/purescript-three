module AST.Core.EventDispatcher where

import Data.Maybe (Maybe(..))
import Data.Variant (inj)
import Type.Proxy (Proxy(..))
import TSAST as T

ast :: T.SourceFile
ast = T.SourceFile
  { importDeclaration: []
  , interfaceDeclaration:
      [ T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "BaseEvent" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "type" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "stringKeyword")
                        (T.StringKeyword { text: "string" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "Event" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "target" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Just
              ( T.HeritageClause
                  { expressionWithTypeArguments: T.ExpressionWithTypeArguments
                      { identifier: T.Identifier { text: "BaseEvent" }
                      , typeReference: []
                      }
                  }
              )
          , indexSignature: Just
              ( T.IndexSignature
                  { parameter: T.Parameter
                      { identifier: T.Identifier { text: "attachment" }
                      , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                          inj (Proxy :: Proxy "stringKeyword")
                            (T.StringKeyword { text: "string" })
                      }
                  , typeReference_or_stringKeyword_or_unionType_or_numberKeyword_or_anyKeyword_or_arrayType:
                      inj (Proxy :: Proxy "anyKeyword")
                        (T.AnyKeyword { text: "any" })
                  }
              )
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      ]
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "typeAliasDeclaration")
        [ T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "EventListener" }
            , typeParameter:
                [ T.TypeParameter
                    { identifier: T.Identifier { text: "E" }
                    , typeReference: []
                    , unionType: []
                    , indexedAccessType: Nothing
                    , anyKeyword: Nothing
                    , objectKeyword: Nothing
                    }
                , T.TypeParameter
                    { identifier: T.Identifier { text: "T" }
                    , typeReference: []
                    , unionType: []
                    , indexedAccessType: Nothing
                    , anyKeyword: Nothing
                    , objectKeyword: Nothing
                    }
                , T.TypeParameter
                    { identifier: T.Identifier { text: "U" }
                    , typeReference: []
                    , unionType: []
                    , indexedAccessType: Nothing
                    , anyKeyword: Nothing
                    , objectKeyword: Nothing
                    }
                ]
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "functionType")
                ( T.FunctionType
                    { parameter:
                        [ T.Parameter
                            { identifier: T.Identifier { text: "event" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "intersectionType")
                                  ( T.IntersectionType
                                      { typeReference_or_stringKeyword: inj
                                          (Proxy :: Proxy "typeReference")
                                          ( T.TypeReference
                                              { identifier_or_firstNode_or_stringKeyword:
                                                  inj
                                                    ( Proxy
                                                        :: Proxy "identifier"
                                                    )
                                                    (T.Identifier { text: "E" })
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
                                      , typeLiteral:
                                          [ T.TypeLiteral
                                              { indexSignature: Nothing
                                              , propertySignature:
                                                  [ T.PropertySignature
                                                      { identifier: T.Identifier
                                                          { text: "type" }
                                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                          inj
                                                            ( Proxy
                                                                :: Proxy
                                                                     "typeReference"
                                                            )
                                                            ( T.TypeReference
                                                                { identifier_or_firstNode_or_stringKeyword:
                                                                    inj
                                                                      ( Proxy
                                                                          :: Proxy
                                                                               "identifier"
                                                                      )
                                                                      ( T.Identifier
                                                                          { text:
                                                                              "T"
                                                                          }
                                                                      )
                                                                , typeReference:
                                                                    []
                                                                , anyKeyword:
                                                                    Nothing
                                                                , unionType:
                                                                    Nothing
                                                                , arrayType:
                                                                    Nothing
                                                                , typeLiteral:
                                                                    Nothing
                                                                , thisType:
                                                                    Nothing
                                                                , numberKeyword:
                                                                    Nothing
                                                                , voidKeyword:
                                                                    Nothing
                                                                , booleanKeyword:
                                                                    Nothing
                                                                , functionType:
                                                                    Nothing
                                                                }
                                                            )
                                                      }
                                                  ]
                                              }
                                          , T.TypeLiteral
                                              { indexSignature: Nothing
                                              , propertySignature:
                                                  [ T.PropertySignature
                                                      { identifier: T.Identifier
                                                          { text: "target" }
                                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                          inj
                                                            ( Proxy
                                                                :: Proxy
                                                                     "typeReference"
                                                            )
                                                            ( T.TypeReference
                                                                { identifier_or_firstNode_or_stringKeyword:
                                                                    inj
                                                                      ( Proxy
                                                                          :: Proxy
                                                                               "identifier"
                                                                      )
                                                                      ( T.Identifier
                                                                          { text:
                                                                              "U"
                                                                          }
                                                                      )
                                                                , typeReference:
                                                                    []
                                                                , anyKeyword:
                                                                    Nothing
                                                                , unionType:
                                                                    Nothing
                                                                , arrayType:
                                                                    Nothing
                                                                , typeLiteral:
                                                                    Nothing
                                                                , thisType:
                                                                    Nothing
                                                                , numberKeyword:
                                                                    Nothing
                                                                , voidKeyword:
                                                                    Nothing
                                                                , booleanKeyword:
                                                                    Nothing
                                                                , functionType:
                                                                    Nothing
                                                                }
                                                            )
                                                      }
                                                  ]
                                              }
                                          ]
                                      }
                                  )
                            }
                        ]
                    , voidKeyword_or_stringKeyword_or_typeParameter_or_anyKeyword_or_numberKeyword:
                        inj (Proxy :: Proxy "voidKeyword")
                          (T.VoidKeyword { text: "void" })
                    }
                )
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }