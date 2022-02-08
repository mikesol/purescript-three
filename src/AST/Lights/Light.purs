module AST.Lights.Light where

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
                              { identifier: T.Identifier { text: "Color" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./../math/Color'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "LightShadow" }
                              }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./LightShadow'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "Object3D" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./../core/Object3D'" }
          }
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "classDeclaration")
        [ T.ClassDeclaration
            { exportKeyword: Just (T.ExportKeyword { text: "export" })
            , identifier: T.Identifier { text: "Light" }
            , heritageClause: Just
                ( T.HeritageClause
                    { expressionWithTypeArguments: T.ExpressionWithTypeArguments
                        { identifier: T.Identifier { text: "Object3D" }
                        , typeReference: []
                        }
                    }
                )
            , constructor:
                [ T.Constructor
                    { parameter:
                        [ T.Parameter
                            { identifier: T.Identifier { text: "hex" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "intensity" }
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
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "color" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
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
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "intensity" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "numberKeyword")
                          (T.NumberKeyword { text: "number" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "isLight" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "readonlyKeyword")
                          (T.ReadonlyKeyword { text: "readonly" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "shadow" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "LightShadow" })
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
                    { identifier: T.Identifier { text: "shadowCameraFov" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "anyKeyword")
                          (T.AnyKeyword { text: "any" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "shadowCameraLeft" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "anyKeyword")
                          (T.AnyKeyword { text: "any" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "shadowCameraRight" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "anyKeyword")
                          (T.AnyKeyword { text: "any" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "shadowCameraTop" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "anyKeyword")
                          (T.AnyKeyword { text: "any" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "shadowCameraBottom" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "anyKeyword")
                          (T.AnyKeyword { text: "any" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "shadowCameraNear" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "anyKeyword")
                          (T.AnyKeyword { text: "any" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "shadowCameraFar" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "anyKeyword")
                          (T.AnyKeyword { text: "any" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "shadowBias" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "anyKeyword")
                          (T.AnyKeyword { text: "any" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "shadowMapWidth" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "anyKeyword")
                          (T.AnyKeyword { text: "any" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "shadowMapHeight" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "anyKeyword")
                          (T.AnyKeyword { text: "any" })
                    }
                ]
            , methodDeclaration:
                [ T.MethodDeclaration
                    { identifier: T.Identifier { text: "dispose" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "voidKeyword")
                          (T.VoidKeyword { text: "void" })
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