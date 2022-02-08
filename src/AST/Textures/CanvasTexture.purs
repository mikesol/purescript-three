module AST.Textures.CanvasTexture where

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
                              { identifier: T.Identifier { text: "Texture" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./Texture'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "Mapping" } }
                          , T.ImportSpecifier
                              { identifier: T.Identifier { text: "Wrapping" } }
                          , T.ImportSpecifier
                              { identifier: T.Identifier
                                  { text: "TextureFilter" }
                              }
                          , T.ImportSpecifier
                              { identifier: T.Identifier { text: "PixelFormat" }
                              }
                          , T.ImportSpecifier
                              { identifier: T.Identifier
                                  { text: "TextureDataType" }
                              }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'../constants'" }
          }
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "classDeclaration")
        [ T.ClassDeclaration
            { exportKeyword: Just (T.ExportKeyword { text: "export" })
            , identifier: T.Identifier { text: "CanvasTexture" }
            , heritageClause: Just
                ( T.HeritageClause
                    { expressionWithTypeArguments: T.ExpressionWithTypeArguments
                        { identifier: T.Identifier { text: "Texture" }
                        , typeReference: []
                        }
                    }
                )
            , constructor:
                [ T.Constructor
                    { parameter:
                        [ T.Parameter
                            { identifier: T.Identifier { text: "canvas" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "unionType")
                                  ( T.UnionType
                                      { typeReference:
                                          [ T.TypeReference
                                              { identifier_or_firstNode_or_stringKeyword:
                                                  inj
                                                    ( Proxy
                                                        :: Proxy "identifier"
                                                    )
                                                    ( T.Identifier
                                                        { text:
                                                            "HTMLImageElement"
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
                                          , T.TypeReference
                                              { identifier_or_firstNode_or_stringKeyword:
                                                  inj
                                                    ( Proxy
                                                        :: Proxy "identifier"
                                                    )
                                                    ( T.Identifier
                                                        { text:
                                                            "HTMLCanvasElement"
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
                                          , T.TypeReference
                                              { identifier_or_firstNode_or_stringKeyword:
                                                  inj
                                                    ( Proxy
                                                        :: Proxy "identifier"
                                                    )
                                                    ( T.Identifier
                                                        { text:
                                                            "HTMLVideoElement"
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
                                          , T.TypeReference
                                              { identifier_or_firstNode_or_stringKeyword:
                                                  inj
                                                    ( Proxy
                                                        :: Proxy "identifier"
                                                    )
                                                    ( T.Identifier
                                                        { text: "ImageBitmap" }
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
                                      , typeLiteral: Nothing
                                      , booleanKeyword: Nothing
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
                            { identifier: T.Identifier { text: "wrapS" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "wrapT" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "magFilter" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "minFilter" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "format" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "type" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "anisotropy" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        ]
                    }
                ]
            , propertyDeclaration:
                [ T.PropertyDeclaration
                    { identifier: T.Identifier { text: "isCanvasTexture" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "readonlyKeyword")
                          (T.ReadonlyKeyword { text: "readonly" })
                    }
                ]
            , methodDeclaration: []
            , typeParameter: []
            , setAccessor: Nothing
            , getAccessor: []
            , firstContextualKeyword: Nothing
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }