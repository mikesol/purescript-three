module AST.Math.Vector2 where

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
                              { identifier: T.Identifier { text: "Matrix3" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./Matrix3'" }
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
      ]
  , interfaceDeclaration:
      [ T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "Vector" }
          , propertySignature: []
          , methodSignature:
              [ T.MethodSignature
                  { identifier: T.Identifier { text: "setComponent" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "index" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "value" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "getComponent" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "index" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "set" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "args" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "dotDotDotToken")
                                  (T.DotDotDotToken { text: "..." })
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "setScalar" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "scalar" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "copy" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "v" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
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
                                  )
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "add" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "v" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
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
                                  )
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "addVectors" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "a" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
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
                                  )
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "b" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
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
                                  )
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "addScaledVector" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "vector" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
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
                                  )
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "scale" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "addScalar" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "scalar" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "sub" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "v" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
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
                                  )
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "subVectors" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "a" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
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
                                  )
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "b" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
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
                                  )
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
                  { identifier: T.Identifier { text: "divideScalar" }
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
                  { identifier: T.Identifier { text: "negate" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "thisType")
                        (T.ThisType { text: "this" })
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "dot" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "v" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
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
                                  )
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "lengthSq" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "numberKeyword")
                        (T.NumberKeyword { text: "number" })
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "length" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "numberKeyword")
                        (T.NumberKeyword { text: "number" })
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "normalize" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "thisType")
                        (T.ThisType { text: "this" })
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "distanceTo" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "distanceToSquared" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "setLength" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "l" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "lerp" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "v" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
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
                                  )
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "alpha" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "equals" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "v" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
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
                                  )
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "clone" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
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
            , identifier: T.Identifier { text: "Vector2Tuple" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "tupleType")
                ( T.TupleType
                    { numberKeyword:
                        [ T.NumberKeyword { text: "number" }
                        , T.NumberKeyword { text: "number" }
                        ]
                    }
                )
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }