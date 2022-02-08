module AST.Cameras.OrthographicCamera where

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
                              { identifier: T.Identifier { text: "Camera" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./Camera'" }
          }
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "classDeclaration")
        [ T.ClassDeclaration
            { exportKeyword: Just (T.ExportKeyword { text: "export" })
            , identifier: T.Identifier { text: "OrthographicCamera" }
            , heritageClause: Just
                ( T.HeritageClause
                    { expressionWithTypeArguments: T.ExpressionWithTypeArguments
                        { identifier: T.Identifier { text: "Camera" }
                        , typeReference: []
                        }
                    }
                )
            , constructor:
                [ T.Constructor
                    { parameter:
                        [ T.Parameter
                            { identifier: T.Identifier { text: "left" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "right" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "top" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "bottom" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "near" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "far" }
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
                        inj (Proxy :: Proxy "literalType")
                          ( T.LiteralType
                              { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                  inj (Proxy :: Proxy "stringLiteral")
                                    ( T.StringLiteral
                                        { text: "'OrthographicCamera'" }
                                    )
                              }
                          )
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "isOrthographicCamera" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "readonlyKeyword")
                          (T.ReadonlyKeyword { text: "readonly" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "zoom" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "numberKeyword")
                          (T.NumberKeyword { text: "number" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "view" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "unionType")
                          ( T.UnionType
                              { typeReference: []
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
                              , typeLiteral: Just
                                  ( T.TypeLiteral
                                      { indexSignature: Nothing
                                      , propertySignature:
                                          [ T.PropertySignature
                                              { identifier: T.Identifier
                                                  { text: "enabled" }
                                              , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                  inj
                                                    ( Proxy
                                                        :: Proxy
                                                             "booleanKeyword"
                                                    )
                                                    ( T.BooleanKeyword
                                                        { text: "boolean" }
                                                    )
                                              }
                                          , T.PropertySignature
                                              { identifier: T.Identifier
                                                  { text: "fullWidth" }
                                              , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                  inj
                                                    ( Proxy
                                                        :: Proxy "numberKeyword"
                                                    )
                                                    ( T.NumberKeyword
                                                        { text: "number" }
                                                    )
                                              }
                                          , T.PropertySignature
                                              { identifier: T.Identifier
                                                  { text: "fullHeight" }
                                              , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                  inj
                                                    ( Proxy
                                                        :: Proxy "numberKeyword"
                                                    )
                                                    ( T.NumberKeyword
                                                        { text: "number" }
                                                    )
                                              }
                                          , T.PropertySignature
                                              { identifier: T.Identifier
                                                  { text: "offsetX" }
                                              , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                  inj
                                                    ( Proxy
                                                        :: Proxy "numberKeyword"
                                                    )
                                                    ( T.NumberKeyword
                                                        { text: "number" }
                                                    )
                                              }
                                          , T.PropertySignature
                                              { identifier: T.Identifier
                                                  { text: "offsetY" }
                                              , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                  inj
                                                    ( Proxy
                                                        :: Proxy "numberKeyword"
                                                    )
                                                    ( T.NumberKeyword
                                                        { text: "number" }
                                                    )
                                              }
                                          , T.PropertySignature
                                              { identifier: T.Identifier
                                                  { text: "width" }
                                              , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                  inj
                                                    ( Proxy
                                                        :: Proxy "numberKeyword"
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
                                                        :: Proxy "numberKeyword"
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
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "left" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "numberKeyword")
                          (T.NumberKeyword { text: "number" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "right" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "numberKeyword")
                          (T.NumberKeyword { text: "number" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "top" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "numberKeyword")
                          (T.NumberKeyword { text: "number" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "bottom" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "numberKeyword")
                          (T.NumberKeyword { text: "number" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "near" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "numberKeyword")
                          (T.NumberKeyword { text: "number" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "far" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "numberKeyword")
                          (T.NumberKeyword { text: "number" })
                    }
                ]
            , methodDeclaration:
                [ T.MethodDeclaration
                    { identifier: T.Identifier
                        { text: "updateProjectionMatrix" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "voidKeyword")
                          (T.VoidKeyword { text: "void" })
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "setViewOffset" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "fullWidth" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "numberKeyword")
                                    (T.NumberKeyword { text: "number" })
                              }
                          , T.Parameter
                              { identifier: T.Identifier { text: "fullHeight" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "numberKeyword")
                                    (T.NumberKeyword { text: "number" })
                              }
                          , T.Parameter
                              { identifier: T.Identifier { text: "offsetX" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "numberKeyword")
                                    (T.NumberKeyword { text: "number" })
                              }
                          , T.Parameter
                              { identifier: T.Identifier { text: "offsetY" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "numberKeyword")
                                    (T.NumberKeyword { text: "number" })
                              }
                          , T.Parameter
                              { identifier: T.Identifier { text: "width" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "numberKeyword")
                                    (T.NumberKeyword { text: "number" })
                              }
                          , T.Parameter
                              { identifier: T.Identifier { text: "height" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "numberKeyword")
                                    (T.NumberKeyword { text: "number" })
                              }
                          ]
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "clearViewOffset" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "voidKeyword")
                          (T.VoidKeyword { text: "void" })
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "toJSON" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "meta" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "questionToken")
                                    (T.QuestionToken { text: "?" })
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