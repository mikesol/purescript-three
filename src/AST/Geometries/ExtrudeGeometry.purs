module AST.Geometries.ExtrudeGeometry where

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
                              { identifier: T.Identifier { text: "Curve" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./../extras/core/Curve'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "Vector2" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./../math/Vector2'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "Vector3" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./../math/Vector3'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "Shape" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./../extras/core/Shape'" }
          }
      , T.ImportDeclaration
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
          , stringLiteral: T.StringLiteral
              { text: "'./../core/BufferGeometry'" }
          }
      ]
  , interfaceDeclaration:
      [ T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "ExtrudeGeometryOptions" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "curveSegments" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "steps" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "depth" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "bevelEnabled" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "bevelThickness" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "bevelSize" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "bevelOffset" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "bevelSegments" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "extrudePath" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "UVGenerator" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
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
          , identifier: T.Identifier { text: "UVGenerator" }
          , propertySignature: []
          , methodSignature:
              [ T.MethodSignature
                  { identifier: T.Identifier { text: "generateTopUV" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "geometry" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "ExtrudeGeometry" }
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
                            { identifier: T.Identifier { text: "vertices" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "arrayType")
                                  ( T.ArrayType
                                      { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                          inj (Proxy :: Proxy "numberKeyword")
                                            (T.NumberKeyword { text: "number" })
                                      }
                                  )
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "indexA" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "indexB" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "indexC" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "generateSideWallUV" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "geometry" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "ExtrudeGeometry" }
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
                            { identifier: T.Identifier { text: "vertices" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "arrayType")
                                  ( T.ArrayType
                                      { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                          inj (Proxy :: Proxy "numberKeyword")
                                            (T.NumberKeyword { text: "number" })
                                      }
                                  )
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "indexA" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "indexB" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "indexC" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "indexD" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        ]
                  }
              ]
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      ]
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "classDeclaration")
        [ T.ClassDeclaration
            { exportKeyword: Just (T.ExportKeyword { text: "export" })
            , identifier: T.Identifier { text: "ExtrudeGeometry" }
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
                            { identifier: T.Identifier { text: "shapes" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "options" }
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
                ]
            , methodDeclaration:
                [ T.MethodDeclaration
                    { identifier: T.Identifier { text: "addShapeList" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "shapes" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "arrayType")
                                    ( T.ArrayType
                                        { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                            inj (Proxy :: Proxy "typeReference")
                                              ( T.TypeReference
                                                  { identifier_or_firstNode_or_stringKeyword:
                                                      inj
                                                        ( Proxy
                                                            :: Proxy
                                                                 "identifier"
                                                        )
                                                        ( T.Identifier
                                                            { text: "Shape" }
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
                              { identifier: T.Identifier { text: "options" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "questionToken")
                                    (T.QuestionToken { text: "?" })
                              }
                          ]
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "addShape" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "shape" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "typeReference")
                                    ( T.TypeReference
                                        { identifier_or_firstNode_or_stringKeyword:
                                            inj (Proxy :: Proxy "identifier")
                                              (T.Identifier { text: "Shape" })
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
                              { identifier: T.Identifier { text: "options" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "questionToken")
                                    (T.QuestionToken { text: "?" })
                              }
                          ]
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "fromJSON" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "staticKeyword")
                          (T.StaticKeyword { text: "static" })
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