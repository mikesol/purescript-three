module AST.Objects.InstancedMesh where

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
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier
                                  { text: "BufferAttribute" }
                              }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral
              { text: "'./../core/BufferAttribute'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier
                                  { text: "InstancedBufferAttribute" }
                              }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral
              { text: "'../core/InstancedBufferAttribute'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "Mesh" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./Mesh'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "Matrix4" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./../math/Matrix4'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "Color" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./../math/Color'" }
          }
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "classDeclaration")
        [ T.ClassDeclaration
            { exportKeyword: Just (T.ExportKeyword { text: "export" })
            , identifier: T.Identifier { text: "InstancedMesh" }
            , heritageClause: Just
                ( T.HeritageClause
                    { expressionWithTypeArguments: T.ExpressionWithTypeArguments
                        { identifier: T.Identifier { text: "Mesh" }
                        , typeReference:
                            [ T.TypeReference
                                { identifier_or_firstNode_or_stringKeyword: inj
                                    (Proxy :: Proxy "identifier")
                                    (T.Identifier { text: "TGeometry" })
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
                                    (T.Identifier { text: "TMaterial" })
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
                        }
                    }
                )
            , constructor:
                [ T.Constructor
                    { parameter:
                        [ T.Parameter
                            { identifier: T.Identifier { text: "geometry" }
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
                                                        { text: "TGeometry" }
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
                                      , undefinedKeyword: Just
                                          ( T.UndefinedKeyword
                                              { text: "undefined" }
                                          )
                                      , objectKeyword: Nothing
                                      , parenthesizedType: Nothing
                                      , arrayType: []
                                      , typeLiteral: Nothing
                                      , booleanKeyword: Nothing
                                      }
                                  )
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "material" }
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
                                                        { text: "TMaterial" }
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
                                      , undefinedKeyword: Just
                                          ( T.UndefinedKeyword
                                              { text: "undefined" }
                                          )
                                      , objectKeyword: Nothing
                                      , parenthesizedType: Nothing
                                      , arrayType: []
                                      , typeLiteral: Nothing
                                      , booleanKeyword: Nothing
                                      }
                                  )
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "count" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        ]
                    }
                ]
            , propertyDeclaration:
                [ T.PropertyDeclaration
                    { identifier: T.Identifier { text: "count" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "numberKeyword")
                          (T.NumberKeyword { text: "number" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "instanceColor" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "unionType")
                          ( T.UnionType
                              { typeReference:
                                  [ T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text:
                                                    "InstancedBufferAttribute"
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
                              , literalType:
                                  [ T.LiteralType
                                      { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                          inj (Proxy :: Proxy "nullKeyword")
                                            (T.NullKeyword { text: "null" })
                                      }
                                  ]
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
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "instanceMatrix" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "InstancedBufferAttribute" }
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
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "isInstancedMesh" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "readonlyKeyword")
                          (T.ReadonlyKeyword { text: "readonly" })
                    }
                ]
            , methodDeclaration:
                [ T.MethodDeclaration
                    { identifier: T.Identifier { text: "getColorAt" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "index" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "numberKeyword")
                                    (T.NumberKeyword { text: "number" })
                              }
                          , T.Parameter
                              { identifier: T.Identifier { text: "color" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "typeReference")
                                    ( T.TypeReference
                                        { identifier_or_firstNode_or_stringKeyword:
                                            inj (Proxy :: Proxy "identifier")
                                              (T.Identifier { text: "Color" })
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
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "getMatrixAt" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "index" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "numberKeyword")
                                    (T.NumberKeyword { text: "number" })
                              }
                          , T.Parameter
                              { identifier: T.Identifier { text: "matrix" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "typeReference")
                                    ( T.TypeReference
                                        { identifier_or_firstNode_or_stringKeyword:
                                            inj (Proxy :: Proxy "identifier")
                                              (T.Identifier { text: "Matrix4" })
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
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "setColorAt" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "index" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "numberKeyword")
                                    (T.NumberKeyword { text: "number" })
                              }
                          , T.Parameter
                              { identifier: T.Identifier { text: "color" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "typeReference")
                                    ( T.TypeReference
                                        { identifier_or_firstNode_or_stringKeyword:
                                            inj (Proxy :: Proxy "identifier")
                                              (T.Identifier { text: "Color" })
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
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "setMatrixAt" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "index" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "numberKeyword")
                                    (T.NumberKeyword { text: "number" })
                              }
                          , T.Parameter
                              { identifier: T.Identifier { text: "matrix" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "typeReference")
                                    ( T.TypeReference
                                        { identifier_or_firstNode_or_stringKeyword:
                                            inj (Proxy :: Proxy "identifier")
                                              (T.Identifier { text: "Matrix4" })
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
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "dispose" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "voidKeyword")
                          (T.VoidKeyword { text: "void" })
                    }
                ]
            , typeParameter:
                [ T.TypeParameter
                    { identifier: T.Identifier { text: "TGeometry" }
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
                , T.TypeParameter
                    { identifier: T.Identifier { text: "TMaterial" }
                    , typeReference: []
                    , unionType:
                        [ T.UnionType
                            { typeReference:
                                [ T.TypeReference
                                    { identifier_or_firstNode_or_stringKeyword:
                                        inj (Proxy :: Proxy "identifier")
                                          (T.Identifier { text: "Material" })
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
                            , arrayType:
                                [ T.ArrayType
                                    { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                        inj (Proxy :: Proxy "typeReference")
                                          ( T.TypeReference
                                              { identifier_or_firstNode_or_stringKeyword:
                                                  inj
                                                    ( Proxy
                                                        :: Proxy "identifier"
                                                    )
                                                    ( T.Identifier
                                                        { text: "Material" }
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
                            , typeLiteral: Nothing
                            , booleanKeyword: Nothing
                            }
                        , T.UnionType
                            { typeReference:
                                [ T.TypeReference
                                    { identifier_or_firstNode_or_stringKeyword:
                                        inj (Proxy :: Proxy "identifier")
                                          (T.Identifier { text: "Material" })
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
                            , arrayType:
                                [ T.ArrayType
                                    { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                        inj (Proxy :: Proxy "typeReference")
                                          ( T.TypeReference
                                              { identifier_or_firstNode_or_stringKeyword:
                                                  inj
                                                    ( Proxy
                                                        :: Proxy "identifier"
                                                    )
                                                    ( T.Identifier
                                                        { text: "Material" }
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
                            , typeLiteral: Nothing
                            , booleanKeyword: Nothing
                            }
                        ]
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