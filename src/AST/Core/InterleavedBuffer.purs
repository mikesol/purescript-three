module AST.Core.InterleavedBuffer where

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
                                  { text: "InterleavedBufferAttribute" }
                              }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral
              { text: "'./InterleavedBufferAttribute'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier { text: "Usage" } }
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
            , identifier: T.Identifier { text: "InterleavedBuffer" }
            , heritageClause: Nothing
            , constructor:
                [ T.Constructor
                    { parameter:
                        [ T.Parameter
                            { identifier: T.Identifier { text: "array" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            (T.Identifier { text: "ArrayLike" })
                                      , typeReference: []
                                      , anyKeyword: Nothing
                                      , unionType: Nothing
                                      , arrayType: Nothing
                                      , typeLiteral: Nothing
                                      , thisType: Nothing
                                      , numberKeyword: Just
                                          (T.NumberKeyword { text: "number" })
                                      , voidKeyword: Nothing
                                      , booleanKeyword: Nothing
                                      , functionType: Nothing
                                      }
                                  )
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "stride" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        ]
                    }
                ]
            , propertyDeclaration:
                [ T.PropertyDeclaration
                    { identifier: T.Identifier { text: "array" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "ArrayLike" })
                              , typeReference: []
                              , anyKeyword: Nothing
                              , unionType: Nothing
                              , arrayType: Nothing
                              , typeLiteral: Nothing
                              , thisType: Nothing
                              , numberKeyword: Just
                                  (T.NumberKeyword { text: "number" })
                              , voidKeyword: Nothing
                              , booleanKeyword: Nothing
                              , functionType: Nothing
                              }
                          )
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "stride" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "numberKeyword")
                          (T.NumberKeyword { text: "number" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "usage" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Usage" })
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
                    { identifier: T.Identifier { text: "updateRange" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "typeLiteral")
                          ( T.TypeLiteral
                              { indexSignature: Nothing
                              , propertySignature:
                                  [ T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "offset" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "numberKeyword")
                                            (T.NumberKeyword { text: "number" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "count" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "numberKeyword")
                                            (T.NumberKeyword { text: "number" })
                                      }
                                  ]
                              }
                          )
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "version" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "numberKeyword")
                          (T.NumberKeyword { text: "number" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "length" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "numberKeyword")
                          (T.NumberKeyword { text: "number" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "count" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "numberKeyword")
                          (T.NumberKeyword { text: "number" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "needsUpdate" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "booleanKeyword")
                          (T.BooleanKeyword { text: "boolean" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "uuid" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "stringKeyword")
                          (T.StringKeyword { text: "string" })
                    }
                ]
            , methodDeclaration:
                [ T.MethodDeclaration
                    { identifier: T.Identifier { text: "setUsage" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "usage" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "typeReference")
                                    ( T.TypeReference
                                        { identifier_or_firstNode_or_stringKeyword:
                                            inj (Proxy :: Proxy "identifier")
                                              (T.Identifier { text: "Usage" })
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
                    { identifier: T.Identifier { text: "clone" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "data" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "objectKeyword")
                                    (T.ObjectKeyword { text: "object" })
                              }
                          ]
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "copy" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "source" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "typeReference")
                                    ( T.TypeReference
                                        { identifier_or_firstNode_or_stringKeyword:
                                            inj (Proxy :: Proxy "identifier")
                                              ( T.Identifier
                                                  { text: "InterleavedBuffer" }
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
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "copyAt" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "index1" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "numberKeyword")
                                    (T.NumberKeyword { text: "number" })
                              }
                          , T.Parameter
                              { identifier: T.Identifier { text: "attribute" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "typeReference")
                                    ( T.TypeReference
                                        { identifier_or_firstNode_or_stringKeyword:
                                            inj (Proxy :: Proxy "identifier")
                                              ( T.Identifier
                                                  { text:
                                                      "InterleavedBufferAttribute"
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
                                    )
                              }
                          , T.Parameter
                              { identifier: T.Identifier { text: "index2" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "numberKeyword")
                                    (T.NumberKeyword { text: "number" })
                              }
                          ]
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "set" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "value" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "typeReference")
                                    ( T.TypeReference
                                        { identifier_or_firstNode_or_stringKeyword:
                                            inj (Proxy :: Proxy "identifier")
                                              ( T.Identifier
                                                  { text: "ArrayLike" }
                                              )
                                        , typeReference: []
                                        , anyKeyword: Nothing
                                        , unionType: Nothing
                                        , arrayType: Nothing
                                        , typeLiteral: Nothing
                                        , thisType: Nothing
                                        , numberKeyword: Just
                                            (T.NumberKeyword { text: "number" })
                                        , voidKeyword: Nothing
                                        , booleanKeyword: Nothing
                                        , functionType: Nothing
                                        }
                                    )
                              }
                          , T.Parameter
                              { identifier: T.Identifier { text: "index" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "numberKeyword")
                                    (T.NumberKeyword { text: "number" })
                              }
                          ]
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "toJSON" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "data" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "objectKeyword")
                                    (T.ObjectKeyword { text: "object" })
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