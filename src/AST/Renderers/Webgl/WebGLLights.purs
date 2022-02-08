module AST.Renderers.Webgl.WebGLLights where

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
                                  { text: "WebGLExtensions" }
                              }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./WebGLExtensions'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier
                                  { text: "WebGLCapabilities" }
                              }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./WebGLCapabilities'" }
          }
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "classDeclaration")
        [ T.ClassDeclaration
            { exportKeyword: Just (T.ExportKeyword { text: "export" })
            , identifier: T.Identifier { text: "WebGLLights" }
            , heritageClause: Nothing
            , constructor:
                [ T.Constructor
                    { parameter:
                        [ T.Parameter
                            { identifier: T.Identifier { text: "extensions" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "WebGLExtensions" }
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
                            { identifier: T.Identifier { text: "capabilities" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "WebGLCapabilities" }
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
                        ]
                    }
                ]
            , propertyDeclaration:
                [ T.PropertyDeclaration
                    { identifier: T.Identifier { text: "state" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "typeLiteral")
                          ( T.TypeLiteral
                              { indexSignature: Nothing
                              , propertySignature:
                                  [ T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "version" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "numberKeyword")
                                            (T.NumberKeyword { text: "number" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "hash" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeLiteral")
                                            ( T.TypeLiteral
                                                { indexSignature: Nothing
                                                , propertySignature:
                                                    [ T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "directionalLength"
                                                              }
                                                        , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "pointLength"
                                                              }
                                                        , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "spotLength"
                                                              }
                                                        , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "rectAreaLength"
                                                              }
                                                        , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "hemiLength"
                                                              }
                                                        , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "numDirectionalShadows"
                                                              }
                                                        , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "numPointShadows"
                                                              }
                                                        , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "numSpotShadows"
                                                              }
                                                        , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
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
                                                    ]
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "ambient" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "arrayType")
                                            ( T.ArrayType
                                                { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy
                                                               "numberKeyword"
                                                      )
                                                      ( T.NumberKeyword
                                                          { text: "number" }
                                                      )
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "probe" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "arrayType")
                                            ( T.ArrayType
                                                { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "anyKeyword"
                                                      )
                                                      ( T.AnyKeyword
                                                          { text: "any" }
                                                      )
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "directional" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "arrayType")
                                            ( T.ArrayType
                                                { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "anyKeyword"
                                                      )
                                                      ( T.AnyKeyword
                                                          { text: "any" }
                                                      )
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "directionalShadow" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "arrayType")
                                            ( T.ArrayType
                                                { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "anyKeyword"
                                                      )
                                                      ( T.AnyKeyword
                                                          { text: "any" }
                                                      )
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "directionalShadowMap" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "arrayType")
                                            ( T.ArrayType
                                                { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "anyKeyword"
                                                      )
                                                      ( T.AnyKeyword
                                                          { text: "any" }
                                                      )
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "directionalShadowMatrix" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "arrayType")
                                            ( T.ArrayType
                                                { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "anyKeyword"
                                                      )
                                                      ( T.AnyKeyword
                                                          { text: "any" }
                                                      )
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "spot" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "arrayType")
                                            ( T.ArrayType
                                                { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "anyKeyword"
                                                      )
                                                      ( T.AnyKeyword
                                                          { text: "any" }
                                                      )
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "spotShadow" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "arrayType")
                                            ( T.ArrayType
                                                { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "anyKeyword"
                                                      )
                                                      ( T.AnyKeyword
                                                          { text: "any" }
                                                      )
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "spotShadowMap" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "arrayType")
                                            ( T.ArrayType
                                                { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "anyKeyword"
                                                      )
                                                      ( T.AnyKeyword
                                                          { text: "any" }
                                                      )
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "spotShadowMatrix" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "arrayType")
                                            ( T.ArrayType
                                                { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "anyKeyword"
                                                      )
                                                      ( T.AnyKeyword
                                                          { text: "any" }
                                                      )
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "rectArea" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "arrayType")
                                            ( T.ArrayType
                                                { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "anyKeyword"
                                                      )
                                                      ( T.AnyKeyword
                                                          { text: "any" }
                                                      )
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "point" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "arrayType")
                                            ( T.ArrayType
                                                { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "anyKeyword"
                                                      )
                                                      ( T.AnyKeyword
                                                          { text: "any" }
                                                      )
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "pointShadow" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "arrayType")
                                            ( T.ArrayType
                                                { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "anyKeyword"
                                                      )
                                                      ( T.AnyKeyword
                                                          { text: "any" }
                                                      )
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "pointShadowMap" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "arrayType")
                                            ( T.ArrayType
                                                { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "anyKeyword"
                                                      )
                                                      ( T.AnyKeyword
                                                          { text: "any" }
                                                      )
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "pointShadowMatrix" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "arrayType")
                                            ( T.ArrayType
                                                { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "anyKeyword"
                                                      )
                                                      ( T.AnyKeyword
                                                          { text: "any" }
                                                      )
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "hemi" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "arrayType")
                                            ( T.ArrayType
                                                { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "anyKeyword"
                                                      )
                                                      ( T.AnyKeyword
                                                          { text: "any" }
                                                      )
                                                }
                                            )
                                      }
                                  ]
                              }
                          )
                    }
                ]
            , methodDeclaration:
                [ T.MethodDeclaration
                    { identifier: T.Identifier { text: "get" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "light" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "anyKeyword")
                                    (T.AnyKeyword { text: "any" })
                              }
                          ]
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "setup" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "lights" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "anyKeyword")
                                    (T.AnyKeyword { text: "any" })
                              }
                          ]
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "setupView" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "lights" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "anyKeyword")
                                    (T.AnyKeyword { text: "any" })
                              }
                          , T.Parameter
                              { identifier: T.Identifier { text: "camera" }
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