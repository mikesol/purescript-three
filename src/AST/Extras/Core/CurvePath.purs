module AST.Extras.Core.CurvePath where

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
          , stringLiteral: T.StringLiteral { text: "'./Curve'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "Vector" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./../../math/Vector2'" }
          }
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "classDeclaration")
        [ T.ClassDeclaration
            { exportKeyword: Just (T.ExportKeyword { text: "export" })
            , identifier: T.Identifier { text: "CurvePath" }
            , heritageClause: Just
                ( T.HeritageClause
                    { expressionWithTypeArguments: T.ExpressionWithTypeArguments
                        { identifier: T.Identifier { text: "Curve" }
                        , typeReference:
                            [ T.TypeReference
                                { identifier_or_firstNode_or_stringKeyword: inj
                                    (Proxy :: Proxy "identifier")
                                    (T.Identifier { text: "T" })
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
            , constructor: [ T.Constructor { parameter: [] } ]
            , propertyDeclaration:
                [ T.PropertyDeclaration
                    { identifier: T.Identifier { text: "type" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "stringKeyword")
                          (T.StringKeyword { text: "string" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "curves" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Array" })
                              , typeReference:
                                  [ T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            (T.Identifier { text: "Curve" })
                                      , typeReference:
                                          [ T.TypeReference
                                              { identifier_or_firstNode_or_stringKeyword:
                                                  inj
                                                    ( Proxy
                                                        :: Proxy "identifier"
                                                    )
                                                    (T.Identifier { text: "T" })
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
                    { identifier: T.Identifier { text: "autoClose" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "booleanKeyword")
                          (T.BooleanKeyword { text: "boolean" })
                    }
                ]
            , methodDeclaration:
                [ T.MethodDeclaration
                    { identifier: T.Identifier { text: "add" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "curve" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "typeReference")
                                    ( T.TypeReference
                                        { identifier_or_firstNode_or_stringKeyword:
                                            inj (Proxy :: Proxy "identifier")
                                              (T.Identifier { text: "Curve" })
                                        , typeReference:
                                            [ T.TypeReference
                                                { identifier_or_firstNode_or_stringKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "identifier"
                                                      )
                                                      ( T.Identifier
                                                          { text: "T" }
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
                    { identifier: T.Identifier { text: "closePath" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "voidKeyword")
                          (T.VoidKeyword { text: "void" })
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "getPoint" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "t" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "numberKeyword")
                                    (T.NumberKeyword { text: "number" })
                              }
                          , T.Parameter
                              { identifier: T.Identifier
                                  { text: "optionalTarget" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "questionToken")
                                    (T.QuestionToken { text: "?" })
                              }
                          ]
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "getCurveLengths" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "arrayType")
                          ( T.ArrayType
                              { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                  inj (Proxy :: Proxy "numberKeyword")
                                    (T.NumberKeyword { text: "number" })
                              }
                          )
                    }
                ]
            , typeParameter:
                [ T.TypeParameter
                    { identifier: T.Identifier { text: "T" }
                    , typeReference:
                        [ T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "Vector" })
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
                ]
            , setAccessor: Nothing
            , getAccessor: []
            , firstContextualKeyword: Nothing
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }