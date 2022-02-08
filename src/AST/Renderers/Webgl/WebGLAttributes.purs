module AST.Renderers.Webgl.WebGLAttributes where

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
                                  { text: "WebGLCapabilities" }
                              }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./WebGLCapabilities'" }
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
              { text: "'../../core/BufferAttribute'" }
          }
      , T.ImportDeclaration
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
              { text: "'../../core/InterleavedBufferAttribute'" }
          }
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "classDeclaration")
        [ T.ClassDeclaration
            { exportKeyword: Just (T.ExportKeyword { text: "export" })
            , identifier: T.Identifier { text: "WebGLAttributes" }
            , heritageClause: Nothing
            , constructor:
                [ T.Constructor
                    { parameter:
                        [ T.Parameter
                            { identifier: T.Identifier { text: "gl" }
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
                                                        { text:
                                                            "WebGLRenderingContext"
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
                                          , T.TypeReference
                                              { identifier_or_firstNode_or_stringKeyword:
                                                  inj
                                                    ( Proxy
                                                        :: Proxy "identifier"
                                                    )
                                                    ( T.Identifier
                                                        { text:
                                                            "WebGL2RenderingContext"
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
                                      , literalType: []
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
                        , T.Parameter
                            { identifier: T.Identifier { text: "capabilities" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "WebGLCapabilities" }
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
                ]
            , propertyDeclaration: []
            , methodDeclaration:
                [ T.MethodDeclaration
                    { identifier: T.Identifier { text: "get" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "attribute" }
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
                                            , T.TypeReference
                                                { identifier_or_firstNode_or_stringKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "identifier"
                                                      )
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
                                            ]
                                        , literalType: []
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
                          ]
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "remove" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "attribute" }
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
                                            , T.TypeReference
                                                { identifier_or_firstNode_or_stringKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "identifier"
                                                      )
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
                                            ]
                                        , literalType: []
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
                          ]
                    }
                , T.MethodDeclaration
                    { identifier: T.Identifier { text: "update" }
                    , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType:
                        inj (Proxy :: Proxy "parameter")
                          [ T.Parameter
                              { identifier: T.Identifier { text: "attribute" }
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
                                            , T.TypeReference
                                                { identifier_or_firstNode_or_stringKeyword:
                                                    inj
                                                      ( Proxy
                                                          :: Proxy "identifier"
                                                      )
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
                                            ]
                                        , literalType: []
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
                          , T.Parameter
                              { identifier: T.Identifier { text: "bufferType" }
                              , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                  inj (Proxy :: Proxy "numberKeyword")
                                    (T.NumberKeyword { text: "number" })
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