module AST.Animation.AnimationClip where

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
                                  { text: "KeyframeTrack" }
                              }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./KeyframeTrack'" }
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
                              { identifier: T.Identifier { text: "Bone" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./../objects/Bone'" }
          }
      , T.ImportDeclaration
          { importClause: T.ImportClause
              { namedImports_or_namespaceImport: inj
                  (Proxy :: Proxy "namedImports")
                  ( T.NamedImports
                      { importSpecifier:
                          [ T.ImportSpecifier
                              { identifier: T.Identifier
                                  { text: "AnimationBlendMode" }
                              }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'../constants'" }
          }
      ]
  , interfaceDeclaration:
      [ T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "MorphTarget" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "name" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "stringKeyword")
                        (T.StringKeyword { text: "string" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "vertices" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "arrayType")
                        ( T.ArrayType
                            { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            (T.Identifier { text: "Vector3" })
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
              ]
          , methodSignature: []
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
            , identifier: T.Identifier { text: "AnimationClip" }
            , heritageClause: Nothing
            , constructor:
                [ T.Constructor
                    { parameter:
                        [ T.Parameter
                            { identifier: T.Identifier { text: "name" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "duration" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "tracks" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "blendMode" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        ]
                    }
                ]
            , propertyDeclaration:
                [ T.PropertyDeclaration
                    { identifier: T.Identifier { text: "name" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "stringKeyword")
                          (T.StringKeyword { text: "string" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "tracks" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "arrayType")
                          ( T.ArrayType
                              { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                  inj (Proxy :: Proxy "typeReference")
                                    ( T.TypeReference
                                        { identifier_or_firstNode_or_stringKeyword:
                                            inj (Proxy :: Proxy "identifier")
                                              ( T.Identifier
                                                  { text: "KeyframeTrack" }
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
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "blendMode" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "AnimationBlendMode" })
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
                    { identifier: T.Identifier { text: "duration" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "numberKeyword")
                          (T.NumberKeyword { text: "number" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "uuid" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "stringKeyword")
                          (T.StringKeyword { text: "string" })
                    }
                , T.PropertyDeclaration
                    { identifier: T.Identifier { text: "results" }
                    , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword:
                        inj (Proxy :: Proxy "arrayType")
                          ( T.ArrayType
                              { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                  inj (Proxy :: Proxy "anyKeyword")
                                    (T.AnyKeyword { text: "any" })
                              }
                          )
                    }
                ]
            , methodDeclaration:
                [ T.MethodDeclaration
                    { identifier: T.Identifier { text: "resetDuration" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "AnimationClip" })
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
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "trim" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "AnimationClip" })
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
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "validate" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "booleanKeyword")
                          (T.BooleanKeyword { text: "boolean" })
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "optimize" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "AnimationClip" })
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
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "clone" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "thisType")
                          (T.ThisType { text: "this" })
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "toJSON" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "clip" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "typeReference")
                                    ( T.TypeReference
                                        { identifier_or_firstNode_or_stringKeyword:
                                            inj (Proxy :: Proxy "identifier")
                                              ( T.Identifier
                                                  { text: "AnimationClip" }
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
                    { identifier: T.Identifier
                        { text: "CreateFromMorphTargetSequence" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "staticKeyword")
                          (T.StaticKeyword { text: "static" })
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "findByName" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "staticKeyword")
                          (T.StaticKeyword { text: "static" })
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier
                        { text: "CreateClipsFromMorphTargetSequences" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "staticKeyword")
                          (T.StaticKeyword { text: "static" })
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "parse" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "staticKeyword")
                          (T.StaticKeyword { text: "static" })
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "parseAnimation" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "staticKeyword")
                          (T.StaticKeyword { text: "static" })
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "toJSON" }
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