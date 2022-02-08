module AST.Extras.ImageUtils where

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
                              { identifier: T.Identifier { text: "Mapping" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'../constants'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "Texture" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'../textures/Texture'" }
          }
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "moduleDeclaration")
        [ T.ModuleDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "ImageUtils" }
            , moduleBlock: T.ModuleBlock
                { firstStatement:
                    [ T.FirstStatement
                        { variableDeclarationList: T.VariableDeclarationList
                            { variableDeclaration: T.VariableDeclaration
                                { identifier: T.Identifier
                                    { text: "crossOrigin" }
                                , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                                    inj (Proxy :: Proxy "stringKeyword")
                                      (T.StringKeyword { text: "string" })
                                }
                            }
                        , exportKeyword: Nothing
                        }
                    ]
                , functionDeclaration:
                    [ T.FunctionDeclaration
                        { identifier: T.Identifier { text: "getDataURL" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "image" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "anyKeyword")
                                      (T.AnyKeyword { text: "any" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "stringKeyword")
                              (T.StringKeyword { text: "string" })
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "loadTexture" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "url" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "stringKeyword")
                                      (T.StringKeyword { text: "string" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "mapping" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "questionToken")
                                      (T.QuestionToken { text: "?" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "onLoad" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "questionToken")
                                      (T.QuestionToken { text: "?" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "onError" }
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
                                        (T.Identifier { text: "Texture" })
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
                        { identifier: T.Identifier { text: "loadTextureCube" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "array" }
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
                                { identifier: T.Identifier { text: "mapping" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "questionToken")
                                      (T.QuestionToken { text: "?" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "onLoad" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "questionToken")
                                      (T.QuestionToken { text: "?" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "onError" }
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
                                        (T.Identifier { text: "Texture" })
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
                        { identifier: T.Identifier { text: "sRGBToLinear" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "image" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "anyKeyword")
                                      (T.AnyKeyword { text: "any" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "unionType")
                              ( T.UnionType
                                  { typeReference:
                                      [ T.TypeReference
                                          { identifier_or_firstNode_or_stringKeyword:
                                              inj (Proxy :: Proxy "identifier")
                                                ( T.Identifier
                                                    { text: "HTMLCanvasElement"
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
                                      ]
                                  , literalType: []
                                  , numberKeyword: Nothing
                                  , stringKeyword: Nothing
                                  , undefinedKeyword: Nothing
                                  , objectKeyword: Nothing
                                  , parenthesizedType: Nothing
                                  , arrayType: []
                                  , typeLiteral: Just
                                      ( T.TypeLiteral
                                          { indexSignature: Nothing
                                          , propertySignature:
                                              [ T.PropertySignature
                                                  { identifier: T.Identifier
                                                      { text: "data" }
                                                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                      inj
                                                        ( Proxy
                                                            :: Proxy "arrayType"
                                                        )
                                                        ( T.ArrayType
                                                            { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                                inj
                                                                  ( Proxy
                                                                      :: Proxy
                                                                           "numberKeyword"
                                                                  )
                                                                  ( T.NumberKeyword
                                                                      { text:
                                                                          "number"
                                                                      }
                                                                  )
                                                            }
                                                        )
                                                  }
                                              , T.PropertySignature
                                                  { identifier: T.Identifier
                                                      { text: "width" }
                                                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                      inj
                                                        ( Proxy
                                                            :: Proxy
                                                                 "numberKeyword"
                                                        )
                                                        ( T.NumberKeyword
                                                            { text: "number" }
                                                        )
                                                  }
                                              , T.PropertySignature
                                                  { identifier: T.Identifier
                                                      { text: "height" }
                                                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                      inj
                                                        ( Proxy
                                                            :: Proxy
                                                                 "numberKeyword"
                                                        )
                                                        ( T.NumberKeyword
                                                            { text: "number" }
                                                        )
                                                  }
                                              ]
                                          }
                                      )
                                  , booleanKeyword: Nothing
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