module AST.Animation.AnimationUtils where

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
                                  { text: "AnimationClip" }
                              }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./AnimationClip'" }
          }
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "moduleDeclaration")
        [ T.ModuleDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "AnimationUtils" }
            , moduleBlock: T.ModuleBlock
                { firstStatement: []
                , functionDeclaration:
                    [ T.FunctionDeclaration
                        { identifier: T.Identifier { text: "arraySlice" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "array" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "anyKeyword")
                                      (T.AnyKeyword { text: "any" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "from" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "to" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "anyKeyword")
                              (T.AnyKeyword { text: "any" })
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "convertArray" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "array" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "anyKeyword")
                                      (T.AnyKeyword { text: "any" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "type" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "anyKeyword")
                                      (T.AnyKeyword { text: "any" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier
                                    { text: "forceClone" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "booleanKeyword")
                                      (T.BooleanKeyword { text: "boolean" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "anyKeyword")
                              (T.AnyKeyword { text: "any" })
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "isTypedArray" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "object" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "anyKeyword")
                                      (T.AnyKeyword { text: "any" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "booleanKeyword")
                              (T.BooleanKeyword { text: "boolean" })
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "getKeyFrameOrder" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "times" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "arrayType")
                                      ( T.ArrayType
                                          { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                              inj
                                                (Proxy :: Proxy "numberKeyword")
                                                ( T.NumberKeyword
                                                    { text: "number" }
                                                )
                                          }
                                      )
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "arrayType")
                              ( T.ArrayType
                                  { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                      inj (Proxy :: Proxy "numberKeyword")
                                        (T.NumberKeyword { text: "number" })
                                  }
                              )
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "sortedArray" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "values" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "arrayType")
                                      ( T.ArrayType
                                          { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                              inj (Proxy :: Proxy "anyKeyword")
                                                (T.AnyKeyword { text: "any" })
                                          }
                                      )
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "stride" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "order" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "arrayType")
                                      ( T.ArrayType
                                          { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                              inj
                                                (Proxy :: Proxy "numberKeyword")
                                                ( T.NumberKeyword
                                                    { text: "number" }
                                                )
                                          }
                                      )
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "arrayType")
                              ( T.ArrayType
                                  { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                      inj (Proxy :: Proxy "anyKeyword")
                                        (T.AnyKeyword { text: "any" })
                                  }
                              )
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "flattenJSON" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "jsonKeys" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "arrayType")
                                      ( T.ArrayType
                                          { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                              inj
                                                (Proxy :: Proxy "stringKeyword")
                                                ( T.StringKeyword
                                                    { text: "string" }
                                                )
                                          }
                                      )
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "times" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "arrayType")
                                      ( T.ArrayType
                                          { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                              inj (Proxy :: Proxy "anyKeyword")
                                                (T.AnyKeyword { text: "any" })
                                          }
                                      )
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "values" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "arrayType")
                                      ( T.ArrayType
                                          { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                              inj (Proxy :: Proxy "anyKeyword")
                                                (T.AnyKeyword { text: "any" })
                                          }
                                      )
                                }
                            , T.Parameter
                                { identifier: T.Identifier
                                    { text: "valuePropertyName" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "stringKeyword")
                                      (T.StringKeyword { text: "string" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "voidKeyword")
                              (T.VoidKeyword { text: "void" })
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "subclip" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier
                                    { text: "sourceClip" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "typeReference")
                                      ( T.TypeReference
                                          { identifier_or_firstNode_or_stringKeyword:
                                              inj (Proxy :: Proxy "identifier")
                                                ( T.Identifier
                                                    { text: "AnimationClip" }
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
                            , T.Parameter
                                { identifier: T.Identifier { text: "name" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "stringKeyword")
                                      (T.StringKeyword { text: "string" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier
                                    { text: "startFrame" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "endFrame" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "fps" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "questionToken")
                                      (T.QuestionToken { text: "?" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "typeReference")
                              ( T.TypeReference
                                  { identifier_or_firstNode_or_stringKeyword:
                                      inj (Proxy :: Proxy "identifier")
                                        (T.Identifier { text: "AnimationClip" })
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
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "makeClipAdditive" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier
                                    { text: "targetClip" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "typeReference")
                                      ( T.TypeReference
                                          { identifier_or_firstNode_or_stringKeyword:
                                              inj (Proxy :: Proxy "identifier")
                                                ( T.Identifier
                                                    { text: "AnimationClip" }
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
                            , T.Parameter
                                { identifier: T.Identifier
                                    { text: "referenceFrame" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "questionToken")
                                      (T.QuestionToken { text: "?" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier
                                    { text: "referenceClip" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "questionToken")
                                      (T.QuestionToken { text: "?" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "fps" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "questionToken")
                                      (T.QuestionToken { text: "?" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "typeReference")
                              ( T.TypeReference
                                  { identifier_or_firstNode_or_stringKeyword:
                                      inj (Proxy :: Proxy "identifier")
                                        (T.Identifier { text: "AnimationClip" })
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
                    ]
                , exportDeclaration: Nothing
                , classDeclaration: Nothing
                }
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }