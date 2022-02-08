module AST.Loaders.MaterialLoader where

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
                              { identifier: T.Identifier { text: "Loader" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./Loader'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier
                                  { text: "LoadingManager" }
                              }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./LoadingManager'" }
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
          , stringLiteral: T.StringLiteral { text: "'./../textures/Texture'" }
          }
      , T.ImportDeclaration
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
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "classDeclaration")
        [ T.ClassDeclaration
            { exportKeyword: Just (T.ExportKeyword { text: "export" })
            , identifier: T.Identifier { text: "MaterialLoader" }
            , heritageClause: Just
                ( T.HeritageClause
                    { expressionWithTypeArguments: T.ExpressionWithTypeArguments
                        { identifier: T.Identifier { text: "Loader" }
                        , typeReference: []
                        }
                    }
                )
            , constructor:
                [ T.Constructor
                    { parameter:
                        [ T.Parameter
                            { identifier: T.Identifier { text: "manager" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        ]
                    }
                ]
            , propertyDeclaration:
                [ T.PropertyDeclaration
                    { identifier: T.Identifier { text: "textures" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "typeLiteral")
                          ( T.TypeLiteral
                              { indexSignature: Just
                                  ( T.IndexSignature
                                      { parameter: T.Parameter
                                          { identifier: T.Identifier
                                              { text: "key" }
                                          , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                              inj
                                                (Proxy :: Proxy "stringKeyword")
                                                ( T.StringKeyword
                                                    { text: "string" }
                                                )
                                          }
                                      , typeReference_or_stringKeyword_or_unionType_or_numberKeyword_or_anyKeyword_or_arrayType:
                                          inj (Proxy :: Proxy "typeReference")
                                            ( T.TypeReference
                                                { identifier_or_firstNode_or_stringKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "identifier"
                                                      )
                                                      ( T.Identifier
                                                          { text: "Texture" }
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
                              , propertySignature: []
                              }
                          )
                    }
                ]
            , methodDeclaration:
                [ T.MethodDeclaration
                    { identifier: T.Identifier { text: "load" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "url" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "stringKeyword")
                                    (T.StringKeyword { text: "string" })
                              }
                          , T.Parameter
                              { identifier: T.Identifier { text: "onLoad" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "functionType")
                                    ( T.FunctionType
                                        { parameter:
                                            [ T.Parameter
                                                { identifier: T.Identifier
                                                    { text: "material" }
                                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
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
                                                                        "Material"
                                                                    }
                                                                )
                                                          , typeReference: []
                                                          , anyKeyword: Nothing
                                                          , unionType: Nothing
                                                          , arrayType: Nothing
                                                          , typeLiteral: Nothing
                                                          , thisType: Nothing
                                                          , numberKeyword:
                                                              Nothing
                                                          , voidKeyword: Nothing
                                                          , booleanKeyword:
                                                              Nothing
                                                          , functionType:
                                                              Nothing
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
                          , T.Parameter
                              { identifier: T.Identifier { text: "onProgress" }
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
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "loadAsync" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "url" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "stringKeyword")
                                    (T.StringKeyword { text: "string" })
                              }
                          , T.Parameter
                              { identifier: T.Identifier { text: "onProgress" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "questionToken")
                                    (T.QuestionToken { text: "?" })
                              }
                          ]
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "setTextures" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "textures" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "typeLiteral")
                                    ( T.TypeLiteral
                                        { indexSignature: Just
                                            ( T.IndexSignature
                                                { parameter: T.Parameter
                                                    { identifier: T.Identifier
                                                        { text: "key" }
                                                    , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                                        inj
                                                          ( Proxy
                                                              :: Proxy
                                                                   "stringKeyword"
                                                          )
                                                          ( T.StringKeyword
                                                              { text: "string" }
                                                          )
                                                    }
                                                , typeReference_or_stringKeyword_or_unionType_or_numberKeyword_or_anyKeyword_or_arrayType:
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
                                                                        "Texture"
                                                                    }
                                                                )
                                                          , typeReference: []
                                                          , anyKeyword: Nothing
                                                          , unionType: Nothing
                                                          , arrayType: Nothing
                                                          , typeLiteral: Nothing
                                                          , thisType: Nothing
                                                          , numberKeyword:
                                                              Nothing
                                                          , voidKeyword: Nothing
                                                          , booleanKeyword:
                                                              Nothing
                                                          , functionType:
                                                              Nothing
                                                          }
                                                      )
                                                }
                                            )
                                        , propertySignature: []
                                        }
                                    )
                              }
                          ]
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "parse" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "json" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "anyKeyword")
                                    (T.AnyKeyword { text: "any" })
                              }
                          ]
                    }
                ]
            , typeParameter: []
            , setAccessor: Nothing
            , getAccessor: []
            , firstContextualKeyword: Nothing
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }