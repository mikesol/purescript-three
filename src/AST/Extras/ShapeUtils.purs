module AST.Extras.ShapeUtils where

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
          , identifier: T.Identifier { text: "Vec2" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "x" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "numberKeyword")
                        (T.NumberKeyword { text: "number" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "y" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "numberKeyword")
                        (T.NumberKeyword { text: "number" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      ]
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "moduleDeclaration")
        [ T.ModuleDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "ShapeUtils" }
            , moduleBlock: T.ModuleBlock
                { firstStatement: []
                , functionDeclaration:
                    [ T.FunctionDeclaration
                        { identifier: T.Identifier { text: "area" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "contour" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "arrayType")
                                      ( T.ArrayType
                                          { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                              inj
                                                (Proxy :: Proxy "typeReference")
                                                ( T.TypeReference
                                                    { identifier_or_firstNode_or_stringKeyword:
                                                        inj
                                                          ( Proxy
                                                              :: Proxy
                                                                   "identifier"
                                                          )
                                                          ( T.Identifier
                                                              { text: "Vec2" }
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
                                      )
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "numberKeyword")
                              (T.NumberKeyword { text: "number" })
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "triangulateShape" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "contour" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "arrayType")
                                      ( T.ArrayType
                                          { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                              inj
                                                (Proxy :: Proxy "typeReference")
                                                ( T.TypeReference
                                                    { identifier_or_firstNode_or_stringKeyword:
                                                        inj
                                                          ( Proxy
                                                              :: Proxy
                                                                   "identifier"
                                                          )
                                                          ( T.Identifier
                                                              { text: "Vec2" }
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
                                      )
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "holes" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "arrayType")
                                      ( T.ArrayType
                                          { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                              inj (Proxy :: Proxy "arrayType")
                                                ( T.ArrayType
                                                    { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
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
                                                                            "Vec2"
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
                                                )
                                          }
                                      )
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "arrayType")
                              ( T.ArrayType
                                  { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                      inj (Proxy :: Proxy "arrayType")
                                        ( T.ArrayType
                                            { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                inj
                                                  ( Proxy
                                                      :: Proxy "numberKeyword"
                                                  )
                                                  ( T.NumberKeyword
                                                      { text: "number" }
                                                  )
                                            }
                                        )
                                  }
                              )
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "isClockWise" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "pts" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "arrayType")
                                      ( T.ArrayType
                                          { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                              inj
                                                (Proxy :: Proxy "typeReference")
                                                ( T.TypeReference
                                                    { identifier_or_firstNode_or_stringKeyword:
                                                        inj
                                                          ( Proxy
                                                              :: Proxy
                                                                   "identifier"
                                                          )
                                                          ( T.Identifier
                                                              { text: "Vec2" }
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
                                      )
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "booleanKeyword")
                              (T.BooleanKeyword { text: "boolean" })
                        }
                    ]
                , exportDeclaration: Nothing
                , classDeclaration: Nothing
                }
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }