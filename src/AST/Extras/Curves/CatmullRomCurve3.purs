module AST.Extras.Curves.CatmullRomCurve3 where

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
                              { identifier: T.Identifier { text: "Vector3" } }
                          ]
                      }
                  )
              }
          , stringLiteral: T.StringLiteral { text: "'./../../math/Vector3'" }
          }
      , T.ImportDeclaration
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
          , stringLiteral: T.StringLiteral { text: "'./../core/Curve'" }
          }
      ]
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "moduleDeclaration")
        [ T.ModuleDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "CurveUtils" }
            , moduleBlock: T.ModuleBlock
                { firstStatement: []
                , functionDeclaration:
                    [ T.FunctionDeclaration
                        { identifier: T.Identifier
                            { text: "tangentQuadraticBezier" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "t" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "p0" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "p1" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "p2" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "numberKeyword")
                              (T.NumberKeyword { text: "number" })
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier
                            { text: "tangentCubicBezier" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "t" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "p0" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "p1" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "p2" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "p3" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "numberKeyword")
                              (T.NumberKeyword { text: "number" })
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "tangentSpline" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "t" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "p0" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "p1" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "p2" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "p3" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "numberKeyword")
                              (T.NumberKeyword { text: "number" })
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "interpolate" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "p0" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "p1" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "p2" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "p3" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "t" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "numberKeyword")
                                      (T.NumberKeyword { text: "number" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "numberKeyword")
                              (T.NumberKeyword { text: "number" })
                        }
                    ]
                , exportDeclaration: Nothing
                , classDeclaration: Nothing
                }
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }