module AST.Renderers.Shaders.UniformsLib where

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
          , identifier: T.Identifier { text: "IUniform" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "value" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "TValue" })
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
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Just
              ( T.TypeParameter
                  { identifier: T.Identifier { text: "TValue" }
                  , typeReference: []
                  , unionType: []
                  , indexedAccessType: Nothing
                  , anyKeyword: Just (T.AnyKeyword { text: "any" })
                  , objectKeyword: Nothing
                  }
              )
          , constructSignature: Nothing
          }
      ]
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "firstStatement")
        [ T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "UniformsLib" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeLiteral")
                          ( T.TypeLiteral
                              { indexSignature: Nothing
                              , propertySignature:
                                  [ T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "common" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeLiteral")
                                            ( T.TypeLiteral
                                                { indexSignature: Nothing
                                                , propertySignature:
                                                    [ T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text: "diffuse"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text: "opacity"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text: "map" }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "uvTransform"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "uv2Transform"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text: "alphaMap"
                                                              }
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
                                                                                "IUniform"
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
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "specularmap" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeLiteral")
                                            ( T.TypeLiteral
                                                { indexSignature: Nothing
                                                , propertySignature:
                                                    [ T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "specularMap"
                                                              }
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
                                                                                "IUniform"
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
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "envmap" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeLiteral")
                                            ( T.TypeLiteral
                                                { indexSignature: Nothing
                                                , propertySignature:
                                                    [ T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text: "envMap" }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "flipEnvMap"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "reflectivity"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "refractionRatio"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "maxMipLevel"
                                                              }
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
                                                                                "IUniform"
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
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "aomap" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeLiteral")
                                            ( T.TypeLiteral
                                                { indexSignature: Nothing
                                                , propertySignature:
                                                    [ T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text: "aoMap" }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "aoMapIntensity"
                                                              }
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
                                                                                "IUniform"
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
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "lightmap" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeLiteral")
                                            ( T.TypeLiteral
                                                { indexSignature: Nothing
                                                , propertySignature:
                                                    [ T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text: "lightMap"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "lightMapIntensity"
                                                              }
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
                                                                                "IUniform"
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
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "emissivemap" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeLiteral")
                                            ( T.TypeLiteral
                                                { indexSignature: Nothing
                                                , propertySignature:
                                                    [ T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "emissiveMap"
                                                              }
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
                                                                                "IUniform"
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
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "bumpmap" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeLiteral")
                                            ( T.TypeLiteral
                                                { indexSignature: Nothing
                                                , propertySignature:
                                                    [ T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text: "bumpMap"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "bumpScale"
                                                              }
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
                                                                                "IUniform"
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
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "normalmap" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeLiteral")
                                            ( T.TypeLiteral
                                                { indexSignature: Nothing
                                                , propertySignature:
                                                    [ T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "normalMap"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "normalScale"
                                                              }
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
                                                                                "IUniform"
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
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "displacementmap" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeLiteral")
                                            ( T.TypeLiteral
                                                { indexSignature: Nothing
                                                , propertySignature:
                                                    [ T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "displacementMap"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "displacementScale"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "displacementBias"
                                                              }
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
                                                                                "IUniform"
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
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "roughnessmap" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeLiteral")
                                            ( T.TypeLiteral
                                                { indexSignature: Nothing
                                                , propertySignature:
                                                    [ T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "roughnessMap"
                                                              }
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
                                                                                "IUniform"
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
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "metalnessmap" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeLiteral")
                                            ( T.TypeLiteral
                                                { indexSignature: Nothing
                                                , propertySignature:
                                                    [ T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "metalnessMap"
                                                              }
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
                                                                                "IUniform"
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
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "gradientmap" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeLiteral")
                                            ( T.TypeLiteral
                                                { indexSignature: Nothing
                                                , propertySignature:
                                                    [ T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "gradientMap"
                                                              }
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
                                                                                "IUniform"
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
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier { text: "fog" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeLiteral")
                                            ( T.TypeLiteral
                                                { indexSignature: Nothing
                                                , propertySignature:
                                                    [ T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "fogDensity"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text: "fogNear"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text: "fogFar" }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text: "fogColor"
                                                              }
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
                                                                                "IUniform"
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
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "lights" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeLiteral")
                                            ( T.TypeLiteral
                                                { indexSignature: Nothing
                                                , propertySignature:
                                                    [ T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "ambientLightColor"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "directionalLights"
                                                              }
                                                        , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                            inj
                                                              ( Proxy
                                                                  :: Proxy
                                                                       "typeLiteral"
                                                              )
                                                              ( T.TypeLiteral
                                                                  { indexSignature:
                                                                      Nothing
                                                                  , propertySignature:
                                                                      [ T.PropertySignature
                                                                          { identifier:
                                                                              T.Identifier
                                                                                { text:
                                                                                    "value"
                                                                                }
                                                                          , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                              inj
                                                                                ( Proxy
                                                                                    :: Proxy
                                                                                         "arrayType"
                                                                                )
                                                                                ( T.ArrayType
                                                                                    { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                                                        inj
                                                                                        ( Proxy
                                                                                            :: Proxy
                                                                                                 "anyKeyword"
                                                                                        )
                                                                                        ( T.AnyKeyword
                                                                                            { text:
                                                                                                "any"
                                                                                            }
                                                                                        )
                                                                                    }
                                                                                )
                                                                          }
                                                                      , T.PropertySignature
                                                                          { identifier:
                                                                              T.Identifier
                                                                                { text:
                                                                                    "properties"
                                                                                }
                                                                          , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                              inj
                                                                                ( Proxy
                                                                                    :: Proxy
                                                                                         "typeLiteral"
                                                                                )
                                                                                ( T.TypeLiteral
                                                                                    { indexSignature:
                                                                                        Nothing
                                                                                    , propertySignature:
                                                                                        [ T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "direction"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "color"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        ]
                                                                                    }
                                                                                )
                                                                          }
                                                                      ]
                                                                  }
                                                              )
                                                        }
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "directionalLightShadows"
                                                              }
                                                        , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                            inj
                                                              ( Proxy
                                                                  :: Proxy
                                                                       "typeLiteral"
                                                              )
                                                              ( T.TypeLiteral
                                                                  { indexSignature:
                                                                      Nothing
                                                                  , propertySignature:
                                                                      [ T.PropertySignature
                                                                          { identifier:
                                                                              T.Identifier
                                                                                { text:
                                                                                    "value"
                                                                                }
                                                                          , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                              inj
                                                                                ( Proxy
                                                                                    :: Proxy
                                                                                         "arrayType"
                                                                                )
                                                                                ( T.ArrayType
                                                                                    { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                                                        inj
                                                                                        ( Proxy
                                                                                            :: Proxy
                                                                                                 "anyKeyword"
                                                                                        )
                                                                                        ( T.AnyKeyword
                                                                                            { text:
                                                                                                "any"
                                                                                            }
                                                                                        )
                                                                                    }
                                                                                )
                                                                          }
                                                                      , T.PropertySignature
                                                                          { identifier:
                                                                              T.Identifier
                                                                                { text:
                                                                                    "properties"
                                                                                }
                                                                          , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                              inj
                                                                                ( Proxy
                                                                                    :: Proxy
                                                                                         "typeLiteral"
                                                                                )
                                                                                ( T.TypeLiteral
                                                                                    { indexSignature:
                                                                                        Nothing
                                                                                    , propertySignature:
                                                                                        [ T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "shadowBias"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "shadowNormalBias"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "shadowRadius"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "shadowMapSize"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        ]
                                                                                    }
                                                                                )
                                                                          }
                                                                      ]
                                                                  }
                                                              )
                                                        }
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "directionalShadowMap"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "directionalShadowMatrix"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "spotLights"
                                                              }
                                                        , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                            inj
                                                              ( Proxy
                                                                  :: Proxy
                                                                       "typeLiteral"
                                                              )
                                                              ( T.TypeLiteral
                                                                  { indexSignature:
                                                                      Nothing
                                                                  , propertySignature:
                                                                      [ T.PropertySignature
                                                                          { identifier:
                                                                              T.Identifier
                                                                                { text:
                                                                                    "value"
                                                                                }
                                                                          , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                              inj
                                                                                ( Proxy
                                                                                    :: Proxy
                                                                                         "arrayType"
                                                                                )
                                                                                ( T.ArrayType
                                                                                    { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                                                        inj
                                                                                        ( Proxy
                                                                                            :: Proxy
                                                                                                 "anyKeyword"
                                                                                        )
                                                                                        ( T.AnyKeyword
                                                                                            { text:
                                                                                                "any"
                                                                                            }
                                                                                        )
                                                                                    }
                                                                                )
                                                                          }
                                                                      , T.PropertySignature
                                                                          { identifier:
                                                                              T.Identifier
                                                                                { text:
                                                                                    "properties"
                                                                                }
                                                                          , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                              inj
                                                                                ( Proxy
                                                                                    :: Proxy
                                                                                         "typeLiteral"
                                                                                )
                                                                                ( T.TypeLiteral
                                                                                    { indexSignature:
                                                                                        Nothing
                                                                                    , propertySignature:
                                                                                        [ T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "color"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "position"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "direction"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "distance"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "coneCos"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "penumbraCos"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "decay"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        ]
                                                                                    }
                                                                                )
                                                                          }
                                                                      ]
                                                                  }
                                                              )
                                                        }
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "spotLightShadows"
                                                              }
                                                        , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                            inj
                                                              ( Proxy
                                                                  :: Proxy
                                                                       "typeLiteral"
                                                              )
                                                              ( T.TypeLiteral
                                                                  { indexSignature:
                                                                      Nothing
                                                                  , propertySignature:
                                                                      [ T.PropertySignature
                                                                          { identifier:
                                                                              T.Identifier
                                                                                { text:
                                                                                    "value"
                                                                                }
                                                                          , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                              inj
                                                                                ( Proxy
                                                                                    :: Proxy
                                                                                         "arrayType"
                                                                                )
                                                                                ( T.ArrayType
                                                                                    { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                                                        inj
                                                                                        ( Proxy
                                                                                            :: Proxy
                                                                                                 "anyKeyword"
                                                                                        )
                                                                                        ( T.AnyKeyword
                                                                                            { text:
                                                                                                "any"
                                                                                            }
                                                                                        )
                                                                                    }
                                                                                )
                                                                          }
                                                                      , T.PropertySignature
                                                                          { identifier:
                                                                              T.Identifier
                                                                                { text:
                                                                                    "properties"
                                                                                }
                                                                          , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                              inj
                                                                                ( Proxy
                                                                                    :: Proxy
                                                                                         "typeLiteral"
                                                                                )
                                                                                ( T.TypeLiteral
                                                                                    { indexSignature:
                                                                                        Nothing
                                                                                    , propertySignature:
                                                                                        [ T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "shadowBias"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "shadowNormalBias"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "shadowRadius"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "shadowMapSize"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        ]
                                                                                    }
                                                                                )
                                                                          }
                                                                      ]
                                                                  }
                                                              )
                                                        }
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "spotShadowMap"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "spotShadowMatrix"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "pointLights"
                                                              }
                                                        , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                            inj
                                                              ( Proxy
                                                                  :: Proxy
                                                                       "typeLiteral"
                                                              )
                                                              ( T.TypeLiteral
                                                                  { indexSignature:
                                                                      Nothing
                                                                  , propertySignature:
                                                                      [ T.PropertySignature
                                                                          { identifier:
                                                                              T.Identifier
                                                                                { text:
                                                                                    "value"
                                                                                }
                                                                          , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                              inj
                                                                                ( Proxy
                                                                                    :: Proxy
                                                                                         "arrayType"
                                                                                )
                                                                                ( T.ArrayType
                                                                                    { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                                                        inj
                                                                                        ( Proxy
                                                                                            :: Proxy
                                                                                                 "anyKeyword"
                                                                                        )
                                                                                        ( T.AnyKeyword
                                                                                            { text:
                                                                                                "any"
                                                                                            }
                                                                                        )
                                                                                    }
                                                                                )
                                                                          }
                                                                      , T.PropertySignature
                                                                          { identifier:
                                                                              T.Identifier
                                                                                { text:
                                                                                    "properties"
                                                                                }
                                                                          , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                              inj
                                                                                ( Proxy
                                                                                    :: Proxy
                                                                                         "typeLiteral"
                                                                                )
                                                                                ( T.TypeLiteral
                                                                                    { indexSignature:
                                                                                        Nothing
                                                                                    , propertySignature:
                                                                                        [ T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "color"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "position"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "decay"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "distance"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        ]
                                                                                    }
                                                                                )
                                                                          }
                                                                      ]
                                                                  }
                                                              )
                                                        }
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "pointLightShadows"
                                                              }
                                                        , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                            inj
                                                              ( Proxy
                                                                  :: Proxy
                                                                       "typeLiteral"
                                                              )
                                                              ( T.TypeLiteral
                                                                  { indexSignature:
                                                                      Nothing
                                                                  , propertySignature:
                                                                      [ T.PropertySignature
                                                                          { identifier:
                                                                              T.Identifier
                                                                                { text:
                                                                                    "value"
                                                                                }
                                                                          , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                              inj
                                                                                ( Proxy
                                                                                    :: Proxy
                                                                                         "arrayType"
                                                                                )
                                                                                ( T.ArrayType
                                                                                    { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                                                        inj
                                                                                        ( Proxy
                                                                                            :: Proxy
                                                                                                 "anyKeyword"
                                                                                        )
                                                                                        ( T.AnyKeyword
                                                                                            { text:
                                                                                                "any"
                                                                                            }
                                                                                        )
                                                                                    }
                                                                                )
                                                                          }
                                                                      , T.PropertySignature
                                                                          { identifier:
                                                                              T.Identifier
                                                                                { text:
                                                                                    "properties"
                                                                                }
                                                                          , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                              inj
                                                                                ( Proxy
                                                                                    :: Proxy
                                                                                         "typeLiteral"
                                                                                )
                                                                                ( T.TypeLiteral
                                                                                    { indexSignature:
                                                                                        Nothing
                                                                                    , propertySignature:
                                                                                        [ T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "shadowBias"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "shadowNormalBias"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "shadowRadius"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "shadowMapSize"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        ]
                                                                                    }
                                                                                )
                                                                          }
                                                                      ]
                                                                  }
                                                              )
                                                        }
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "pointShadowMap"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "pointShadowMatrix"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "hemisphereLights"
                                                              }
                                                        , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                            inj
                                                              ( Proxy
                                                                  :: Proxy
                                                                       "typeLiteral"
                                                              )
                                                              ( T.TypeLiteral
                                                                  { indexSignature:
                                                                      Nothing
                                                                  , propertySignature:
                                                                      [ T.PropertySignature
                                                                          { identifier:
                                                                              T.Identifier
                                                                                { text:
                                                                                    "value"
                                                                                }
                                                                          , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                              inj
                                                                                ( Proxy
                                                                                    :: Proxy
                                                                                         "arrayType"
                                                                                )
                                                                                ( T.ArrayType
                                                                                    { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                                                        inj
                                                                                        ( Proxy
                                                                                            :: Proxy
                                                                                                 "anyKeyword"
                                                                                        )
                                                                                        ( T.AnyKeyword
                                                                                            { text:
                                                                                                "any"
                                                                                            }
                                                                                        )
                                                                                    }
                                                                                )
                                                                          }
                                                                      , T.PropertySignature
                                                                          { identifier:
                                                                              T.Identifier
                                                                                { text:
                                                                                    "properties"
                                                                                }
                                                                          , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                              inj
                                                                                ( Proxy
                                                                                    :: Proxy
                                                                                         "typeLiteral"
                                                                                )
                                                                                ( T.TypeLiteral
                                                                                    { indexSignature:
                                                                                        Nothing
                                                                                    , propertySignature:
                                                                                        [ T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "direction"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "skycolor"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "groundColor"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        ]
                                                                                    }
                                                                                )
                                                                          }
                                                                      ]
                                                                  }
                                                              )
                                                        }
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "rectAreaLights"
                                                              }
                                                        , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                            inj
                                                              ( Proxy
                                                                  :: Proxy
                                                                       "typeLiteral"
                                                              )
                                                              ( T.TypeLiteral
                                                                  { indexSignature:
                                                                      Nothing
                                                                  , propertySignature:
                                                                      [ T.PropertySignature
                                                                          { identifier:
                                                                              T.Identifier
                                                                                { text:
                                                                                    "value"
                                                                                }
                                                                          , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                              inj
                                                                                ( Proxy
                                                                                    :: Proxy
                                                                                         "arrayType"
                                                                                )
                                                                                ( T.ArrayType
                                                                                    { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                                                                        inj
                                                                                        ( Proxy
                                                                                            :: Proxy
                                                                                                 "anyKeyword"
                                                                                        )
                                                                                        ( T.AnyKeyword
                                                                                            { text:
                                                                                                "any"
                                                                                            }
                                                                                        )
                                                                                    }
                                                                                )
                                                                          }
                                                                      , T.PropertySignature
                                                                          { identifier:
                                                                              T.Identifier
                                                                                { text:
                                                                                    "properties"
                                                                                }
                                                                          , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                              inj
                                                                                ( Proxy
                                                                                    :: Proxy
                                                                                         "typeLiteral"
                                                                                )
                                                                                ( T.TypeLiteral
                                                                                    { indexSignature:
                                                                                        Nothing
                                                                                    , propertySignature:
                                                                                        [ T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "color"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "position"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "width"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        , T.PropertySignature
                                                                                            { identifier:
                                                                                                T.Identifier
                                                                                                { text:
                                                                                                    "height"
                                                                                                }
                                                                                            , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                                                                inj
                                                                                                ( Proxy
                                                                                                    :: Proxy
                                                                                                         "typeLiteral"
                                                                                                )
                                                                                                ( T.TypeLiteral
                                                                                                    { indexSignature:
                                                                                                        Nothing
                                                                                                    , propertySignature:
                                                                                                        []
                                                                                                    }
                                                                                                )
                                                                                            }
                                                                                        ]
                                                                                    }
                                                                                )
                                                                          }
                                                                      ]
                                                                  }
                                                              )
                                                        }
                                                    ]
                                                }
                                            )
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "points" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "typeLiteral")
                                            ( T.TypeLiteral
                                                { indexSignature: Nothing
                                                , propertySignature:
                                                    [ T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text: "diffuse"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text: "opacity"
                                                              }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text: "size" }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text: "scale" }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text: "map" }
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
                                                                                "IUniform"
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
                                                    , T.PropertySignature
                                                        { identifier:
                                                            T.Identifier
                                                              { text:
                                                                  "uvTransform"
                                                              }
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
                                                                                "IUniform"
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
                                            )
                                      }
                                  ]
                              }
                          )
                    }
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }