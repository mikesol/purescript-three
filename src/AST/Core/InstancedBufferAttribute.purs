module AST.Core.InstancedBufferAttribute where

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
          , stringLiteral: T.StringLiteral { text: "'./BufferGeometry'" }
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
          , stringLiteral: T.StringLiteral { text: "'./BufferAttribute'" }
          }
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "moduleDeclaration")
        [ T.ModuleDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "BufferGeometryUtils" }
            , moduleBlock: T.ModuleBlock
                { firstStatement: []
                , functionDeclaration:
                    [ T.FunctionDeclaration
                        { identifier: T.Identifier
                            { text: "mergeBufferGeometries" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier
                                    { text: "geometries" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "arrayType")
                                      ( T.ArrayType
                                          { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                              inj
                                                (Proxy :: Proxy "typeReference")
                                                ( T.TypeReference
                                                    { identifier_or_firstNode_or_stringKeyword:
                                                        inj
                                                          ( Proxy
                                                              :: Proxy
                                                                   "identifier"
                                                          )
                                                          ( T.Identifier
                                                              { text:
                                                                  "BufferGeometry"
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
                                      )
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "typeReference")
                              ( T.TypeReference
                                  { identifier_or_firstNode_or_stringKeyword:
                                      inj (Proxy :: Proxy "identifier")
                                        ( T.Identifier
                                            { text: "BufferGeometry" }
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
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "computeTangents" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "geometry" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "typeReference")
                                      ( T.TypeReference
                                          { identifier_or_firstNode_or_stringKeyword:
                                              inj (Proxy :: Proxy "identifier")
                                                ( T.Identifier
                                                    { text: "BufferGeometry" }
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
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "literalType")
                              ( T.LiteralType
                                  { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                      inj (Proxy :: Proxy "nullKeyword")
                                        (T.NullKeyword { text: "null" })
                                  }
                              )
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier
                            { text: "mergeBufferAttributes" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier
                                    { text: "attributes" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "arrayType")
                                      ( T.ArrayType
                                          { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                              inj
                                                (Proxy :: Proxy "typeReference")
                                                ( T.TypeReference
                                                    { identifier_or_firstNode_or_stringKeyword:
                                                        inj
                                                          ( Proxy
                                                              :: Proxy
                                                                   "identifier"
                                                          )
                                                          ( T.Identifier
                                                              { text:
                                                                  "BufferAttribute"
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
                                      )
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "typeReference")
                              ( T.TypeReference
                                  { identifier_or_firstNode_or_stringKeyword:
                                      inj (Proxy :: Proxy "identifier")
                                        ( T.Identifier
                                            { text: "BufferAttribute" }
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
                , exportDeclaration: Nothing
                , classDeclaration: Nothing
                }
            }
        , T.ModuleDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "GeometryUtils" }
            , moduleBlock: T.ModuleBlock
                { firstStatement: []
                , functionDeclaration:
                    [ T.FunctionDeclaration
                        { identifier: T.Identifier { text: "merge" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "geometry1" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "anyKeyword")
                                      (T.AnyKeyword { text: "any" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "geometry2" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "anyKeyword")
                                      (T.AnyKeyword { text: "any" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier
                                    { text: "materialIndexOffset" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "questionToken")
                                      (T.QuestionToken { text: "?" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "anyKeyword")
                              (T.AnyKeyword { text: "any" })
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "center" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "geometry" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "anyKeyword")
                                      (T.AnyKeyword { text: "any" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "anyKeyword")
                              (T.AnyKeyword { text: "any" })
                        }
                    ]
                , exportDeclaration: Nothing
                , classDeclaration: Nothing
                }
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }