module AST.Math.Matrix3 where

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
                              { identifier: T.Identifier { text: "Matrix4" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./Matrix4'" }
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
          , stringLiteral: T.StringLiteral { text: "'./Vector3'" }
          }
      ]
  , interfaceDeclaration:
      [ T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "Matrix" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "elements" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "arrayType")
                        ( T.ArrayType
                            { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        )
                  }
              ]
          , methodSignature:
              [ T.MethodSignature
                  { identifier: T.Identifier { text: "identity" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "Matrix" })
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
              , T.MethodSignature
                  { identifier: T.Identifier { text: "copy" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "m" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "thisType")
                                  (T.ThisType { text: "this" })
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "multiplyScalar" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "s" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "determinant" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "numberKeyword")
                        (T.NumberKeyword { text: "number" })
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "transpose" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "Matrix" })
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
              , T.MethodSignature
                  { identifier: T.Identifier { text: "invert" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "Matrix" })
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
              , T.MethodSignature
                  { identifier: T.Identifier { text: "clone" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "Matrix" })
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
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      ]
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "typeAliasDeclaration")
        [ T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "Matrix3Tuple" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "tupleType")
                ( T.TupleType
                    { numberKeyword:
                        [ T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        ]
                    }
                )
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }