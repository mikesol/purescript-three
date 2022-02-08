module AST.Renderers.Webxr.WebXR where

import Data.Maybe (Maybe(..))
import Data.Variant (inj)
import Type.Proxy (Proxy(..))
import TSAST as T

ast :: T.SourceFile
ast = T.SourceFile
  { importDeclaration: []
  , interfaceDeclaration:
      [ T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XR" }
          , propertySignature: []
          , methodSignature:
              [ T.MethodSignature
                  { identifier: T.Identifier { text: "requestSession" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "mode" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "XRSessionMode" }
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
                            { identifier: T.Identifier { text: "options" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "isSessionSupported" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "mode" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "XRSessionMode" }
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
          , heritageClause: Just
              ( T.HeritageClause
                  { expressionWithTypeArguments: T.ExpressionWithTypeArguments
                      { identifier: T.Identifier { text: "EventTarget" }
                      , typeReference: []
                      }
                  }
              )
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "Window" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "XRSession" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "XR" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "Navigator" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "xr" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRReferenceSpace" }
          , propertySignature: []
          , methodSignature:
              [ T.MethodSignature
                  { identifier: T.Identifier { text: "getOffsetReferenceSpace" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "originOffset" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "XRRigidTransform" }
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
          , heritageClause: Just
              ( T.HeritageClause
                  { expressionWithTypeArguments: T.ExpressionWithTypeArguments
                      { identifier: T.Identifier { text: "EventTarget" }
                      , typeReference: []
                      }
                  }
              )
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRHitTestOptionsInit" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "space" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "EventTarget" })
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
              , T.PropertySignature
                  { identifier: T.Identifier { text: "offsetRay" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier
              { text: "XRTransientInputHitTestOptionsInit" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "profile" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "stringKeyword")
                        (T.StringKeyword { text: "string" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "offsetRay" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRViewport" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "x" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "y" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "width" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "height" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "WebGLRenderingContext" }
          , propertySignature: []
          , methodSignature:
              [ T.MethodSignature
                  { identifier: T.Identifier { text: "makeXRCompatible" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "Promise" })
                            , typeReference: []
                            , anyKeyword: Nothing
                            , unionType: Nothing
                            , arrayType: Nothing
                            , typeLiteral: Nothing
                            , thisType: Nothing
                            , numberKeyword: Nothing
                            , voidKeyword: Just (T.VoidKeyword { text: "void" })
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
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRRenderState" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "depthNear" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "depthFar" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier
                      { text: "inlineVerticalFieldOfView" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "baseLayer" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRRenderStateInit" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "depthNear" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "depthFar" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier
                      { text: "inlineVerticalFieldOfView" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "baseLayer" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRGamepad" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "id" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "index" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "connected" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "timestamp" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "mapping" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "axes" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "buttons" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRInputSource" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "handedness" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "targetRayMode" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "targetRaySpace" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "gripSpace" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "profiles" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "gamepad" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "hand" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRSessionInit" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "optionalFeatures" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "requiredFeatures" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRSession" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "renderState" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "XRRenderState" })
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
              , T.PropertySignature
                  { identifier: T.Identifier { text: "inputSources" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "arrayType")
                        ( T.ArrayType
                            { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "XRInputSource" }
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
              , T.PropertySignature
                  { identifier: T.Identifier { text: "environmentBlendMode" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                ( T.Identifier
                                    { text: "XREnvironmentBlendMode" }
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
              , T.PropertySignature
                  { identifier: T.Identifier { text: "visibilityState" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "XRVisibilityState" })
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
          , methodSignature:
              [ T.MethodSignature
                  { identifier: T.Identifier { text: "requestReferenceSpace" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "type" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "XRReferenceSpaceType" }
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
              , T.MethodSignature
                  { identifier: T.Identifier { text: "updateRenderState" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier
                                { text: "renderStateInit" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "XRRenderStateInit" }
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
              , T.MethodSignature
                  { identifier: T.Identifier { text: "requestAnimationFrame" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "callback" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "XRFrameRequestCallback"
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
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "cancelAnimationFrame" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "id" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "end" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "Promise" })
                            , typeReference: []
                            , anyKeyword: Nothing
                            , unionType: Nothing
                            , arrayType: Nothing
                            , typeLiteral: Nothing
                            , thisType: Nothing
                            , numberKeyword: Nothing
                            , voidKeyword: Just (T.VoidKeyword { text: "void" })
                            , booleanKeyword: Nothing
                            , functionType: Nothing
                            }
                        )
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "requestHitTestSource" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "options" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "XRHitTestOptionsInit" }
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
              , T.MethodSignature
                  { identifier: T.Identifier
                      { text: "requestHitTestSourceForTransientInput" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "options" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text:
                                                    "XRTransientInputHitTestOptionsInit"
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
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "requestHitTest" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "ray" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            (T.Identifier { text: "XRRay" })
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
                            { identifier: T.Identifier
                                { text: "referenceSpace" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "XRReferenceSpace" }
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
              , T.MethodSignature
                  { identifier: T.Identifier
                      { text: "updateWorldTrackingState" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "options" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeLiteral")
                                  ( T.TypeLiteral
                                      { indexSignature: Nothing
                                      , propertySignature:
                                          [ T.PropertySignature
                                              { identifier: T.Identifier
                                                  { text: "planeDetectionState"
                                                  }
                                              , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                                  inj
                                                    ( Proxy
                                                        :: Proxy "questionToken"
                                                    )
                                                    ( T.QuestionToken
                                                        { text: "?" }
                                                    )
                                              }
                                          ]
                                      }
                                  )
                            }
                        ]
                  }
              ]
          , heritageClause: Just
              ( T.HeritageClause
                  { expressionWithTypeArguments: T.ExpressionWithTypeArguments
                      { identifier: T.Identifier { text: "EventTarget" }
                      , typeReference: []
                      }
                  }
              )
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRReferenceSpace" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "onreset" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "anyKeyword")
                        (T.AnyKeyword { text: "any" })
                  }
              ]
          , methodSignature:
              [ T.MethodSignature
                  { identifier: T.Identifier { text: "getOffsetReferenceSpace" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "originOffset" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "XRRigidTransform" }
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
          , heritageClause: Just
              ( T.HeritageClause
                  { expressionWithTypeArguments: T.ExpressionWithTypeArguments
                      { identifier: T.Identifier { text: "EventTarget" }
                      , typeReference: []
                      }
                  }
              )
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRFrame" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "session" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "trackedAnchors" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "worldInformation" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "typeLiteral")
                        ( T.TypeLiteral
                            { indexSignature: Nothing
                            , propertySignature:
                                [ T.PropertySignature
                                    { identifier: T.Identifier
                                        { text: "detectedPlanes" }
                                    , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                        inj (Proxy :: Proxy "questionToken")
                                          (T.QuestionToken { text: "?" })
                                    }
                                ]
                            }
                        )
                  }
              ]
          , methodSignature:
              [ T.MethodSignature
                  { identifier: T.Identifier { text: "getViewerPose" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier
                                { text: "referenceSpace" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "XRReferenceSpace" }
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
              , T.MethodSignature
                  { identifier: T.Identifier { text: "getPose" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "space" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "EventTarget" }
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
                            { identifier: T.Identifier { text: "baseSpace" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "EventTarget" }
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
              , T.MethodSignature
                  { identifier: T.Identifier { text: "getHitTestResults" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "hitTestSource" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "XRHitTestSource" }
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
              , T.MethodSignature
                  { identifier: T.Identifier
                      { text: "getHitTestResultsForTransientInput" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "hitTestSource" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text:
                                                    "XRTransientInputHitTestSource"
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
                        ]
                  }
              , T.MethodSignature
                  { identifier: T.Identifier { text: "createAnchor" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "pose" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "XRRigidTransform" }
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
                            { identifier: T.Identifier { text: "space" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "EventTarget" }
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
              , T.MethodSignature
                  { identifier: T.Identifier { text: "getJointPose" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "joint" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "XRJointSpace" }
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
                            { identifier: T.Identifier { text: "baseSpace" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "EventTarget" }
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
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRViewerPose" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "transform" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "views" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRPose" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "emulatedPosition" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "transform" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRWebGLLayerInit" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "antialias" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "depth" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "stencil" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "alpha" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "ignoreDepthValues" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "framebufferScaleFactor" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "DOMPointInit" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "w" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "x" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "y" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "z" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRView" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "eye" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "projectionMatrix" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "viewMatrix" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "transform" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRRayDirectionInit" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "x" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "y" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "z" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "w" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRHitResult" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "hitMatrix" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "Float32Array" })
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
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRTransientInputHitTestResult" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "inputSource" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "results" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRHitTestResult" }
          , propertySignature: []
          , methodSignature:
              [ T.MethodSignature
                  { identifier: T.Identifier { text: "getPose" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "parameter")
                        [ T.Parameter
                            { identifier: T.Identifier { text: "baseSpace" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "EventTarget" }
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
              , T.MethodSignature
                  { identifier: T.Identifier { text: "createAnchor" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              ]
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRHitTestSource" }
          , propertySignature: []
          , methodSignature:
              [ T.MethodSignature
                  { identifier: T.Identifier { text: "cancel" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "voidKeyword")
                        (T.VoidKeyword { text: "void" })
                  }
              ]
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRTransientInputHitTestSource" }
          , propertySignature: []
          , methodSignature:
              [ T.MethodSignature
                  { identifier: T.Identifier { text: "cancel" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "voidKeyword")
                        (T.VoidKeyword { text: "void" })
                  }
              ]
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRHitTestOptionsInit" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "space" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "EventTarget" })
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
              , T.PropertySignature
                  { identifier: T.Identifier { text: "entityTypes" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "offsetRay" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier
              { text: "XRTransientInputHitTestOptionsInit" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "profile" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "stringKeyword")
                        (T.StringKeyword { text: "string" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "entityTypes" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "offsetRay" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "questionToken")
                        (T.QuestionToken { text: "?" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRAnchor" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "anchorSpace" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "EventTarget" })
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
          , methodSignature:
              [ T.MethodSignature
                  { identifier: T.Identifier { text: "delete" }
                  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword:
                      inj (Proxy :: Proxy "voidKeyword")
                        (T.VoidKeyword { text: "void" })
                  }
              ]
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRPlane" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "orientation" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "unionType")
                        ( T.UnionType
                            { typeReference: []
                            , literalType:
                                [ T.LiteralType
                                    { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                        inj (Proxy :: Proxy "stringLiteral")
                                          ( T.StringLiteral
                                              { text: "'Horizontal'" }
                                          )
                                    }
                                , T.LiteralType
                                    { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                        inj (Proxy :: Proxy "stringLiteral")
                                          ( T.StringLiteral
                                              { text: "'Vertical'" }
                                          )
                                    }
                                ]
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
              , T.PropertySignature
                  { identifier: T.Identifier { text: "planeSpace" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "EventTarget" })
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
              , T.PropertySignature
                  { identifier: T.Identifier { text: "polygon" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "arrayType")
                        ( T.ArrayType
                            { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "DOMPointReadOnly" }
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
              , T.PropertySignature
                  { identifier: T.Identifier { text: "lastChangedTime" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "numberKeyword")
                        (T.NumberKeyword { text: "number" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRJointSpace" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "jointName" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Just
              ( T.HeritageClause
                  { expressionWithTypeArguments: T.ExpressionWithTypeArguments
                      { identifier: T.Identifier { text: "EventTarget" }
                      , typeReference: []
                      }
                  }
              )
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRJointPose" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "radius" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Just
              ( T.HeritageClause
                  { expressionWithTypeArguments: T.ExpressionWithTypeArguments
                      { identifier: T.Identifier { text: "XRPose" }
                      , typeReference: []
                      }
                  }
              )
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRHand" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "size" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Just
              ( T.HeritageClause
                  { expressionWithTypeArguments: T.ExpressionWithTypeArguments
                      { identifier: T.Identifier { text: "Map" }
                      , typeReference:
                          [ T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "XRHandJoint" })
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
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "XRJointSpace" })
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
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "Constructor" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "prototype" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
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
                        )
                  }
              ]
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Just
              ( T.TypeParameter
                  { identifier: T.Identifier { text: "T" }
                  , typeReference: []
                  , unionType: []
                  , indexedAccessType: Nothing
                  , anyKeyword: Nothing
                  , objectKeyword: Just (T.ObjectKeyword { text: "object" })
                  }
              )
          , constructSignature: Just
              ( T.ConstructSignature
                  { parameter: T.Parameter
                      { identifier: T.Identifier { text: "args" }
                      , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                          inj (Proxy :: Proxy "dotDotDotToken")
                            (T.DotDotDotToken { text: "..." })
                      }
                  , typeReference: T.TypeReference
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
                  }
              )
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRInputSourceChangeEvent" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "session" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "typeReference")
                        ( T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "XRSession" })
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
              , T.PropertySignature
                  { identifier: T.Identifier { text: "removed" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "arrayType")
                        ( T.ArrayType
                            { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "XRInputSource" }
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
              , T.PropertySignature
                  { identifier: T.Identifier { text: "added" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "arrayType")
                        ( T.ArrayType
                            { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            ( T.Identifier
                                                { text: "XRInputSource" }
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
          , methodSignature: []
          , heritageClause: Nothing
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      , T.InterfaceDeclaration
          { exportKeyword: T.ExportKeyword { text: "export" }
          , identifier: T.Identifier { text: "XRInputSourceEvent" }
          , propertySignature:
              [ T.PropertySignature
                  { identifier: T.Identifier { text: "frame" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              , T.PropertySignature
                  { identifier: T.Identifier { text: "inputSource" }
                  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                      inj (Proxy :: Proxy "readonlyKeyword")
                        (T.ReadonlyKeyword { text: "readonly" })
                  }
              ]
          , methodSignature: []
          , heritageClause: Just
              ( T.HeritageClause
                  { expressionWithTypeArguments: T.ExpressionWithTypeArguments
                      { identifier: T.Identifier { text: "Event" }
                      , typeReference: []
                      }
                  }
              )
          , indexSignature: Nothing
          , typeParameter: Nothing
          , constructSignature: Nothing
          }
      ]
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "typeAliasDeclaration")
        [ T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "XRSessionMode" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "unionType")
                ( T.UnionType
                    { typeReference: []
                    , literalType:
                        [ T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'inline'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'immersive-vr'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'immersive-ar'" })
                            }
                        ]
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
        , T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "XRReferenceSpaceType" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "unionType")
                ( T.UnionType
                    { typeReference: []
                    , literalType:
                        [ T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'viewer'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'local'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'local-floor'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'bounded-floor'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'unbounded'" })
                            }
                        ]
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
        , T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "XREnvironmentBlendMode" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "unionType")
                ( T.UnionType
                    { typeReference: []
                    , literalType:
                        [ T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'opaque'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'additive'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'alpha-blend'" })
                            }
                        ]
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
        , T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "XRVisibilityState" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "unionType")
                ( T.UnionType
                    { typeReference: []
                    , literalType:
                        [ T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'visible'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  ( T.StringLiteral
                                      { text: "'visible-blurred'" }
                                  )
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'hidden'" })
                            }
                        ]
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
        , T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "XRHandedness" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "unionType")
                ( T.UnionType
                    { typeReference: []
                    , literalType:
                        [ T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'none'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'left'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'right'" })
                            }
                        ]
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
        , T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "XRTargetRayMode" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "unionType")
                ( T.UnionType
                    { typeReference: []
                    , literalType:
                        [ T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'gaze'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  ( T.StringLiteral
                                      { text: "'tracked-pointer'" }
                                  )
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'screen'" })
                            }
                        ]
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
        , T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "XREye" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "unionType")
                ( T.UnionType
                    { typeReference: []
                    , literalType:
                        [ T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'none'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'left'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'right'" })
                            }
                        ]
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
        , T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "XREventType" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "unionType")
                ( T.UnionType
                    { typeReference: []
                    , literalType:
                        [ T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'end'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'select'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'selectstart'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'selectend'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'squeeze'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'squeezestart'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  (T.StringLiteral { text: "'squeezeend'" })
                            }
                        , T.LiteralType
                            { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken:
                                inj (Proxy :: Proxy "stringLiteral")
                                  ( T.StringLiteral
                                      { text: "'inputsourceschange'" }
                                  )
                            }
                        ]
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
        , T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "XRAnimationLoopCallback" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "functionType")
                ( T.FunctionType
                    { parameter:
                        [ T.Parameter
                            { identifier: T.Identifier { text: "time" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "frame" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "questionToken")
                                  (T.QuestionToken { text: "?" })
                            }
                        ]
                    , voidKeyword_or_stringKeyword_or_typeParameter_or_anyKeyword_or_numberKeyword:
                        inj (Proxy :: Proxy "voidKeyword")
                          (T.VoidKeyword { text: "void" })
                    }
                )
            }
        , T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "XRFrameRequestCallback" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "functionType")
                ( T.FunctionType
                    { parameter:
                        [ T.Parameter
                            { identifier: T.Identifier { text: "time" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "numberKeyword")
                                  (T.NumberKeyword { text: "number" })
                            }
                        , T.Parameter
                            { identifier: T.Identifier { text: "frame" }
                            , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                inj (Proxy :: Proxy "typeReference")
                                  ( T.TypeReference
                                      { identifier_or_firstNode_or_stringKeyword:
                                          inj (Proxy :: Proxy "identifier")
                                            (T.Identifier { text: "XRFrame" })
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
                    , voidKeyword_or_stringKeyword_or_typeParameter_or_anyKeyword_or_numberKeyword:
                        inj (Proxy :: Proxy "voidKeyword")
                          (T.VoidKeyword { text: "void" })
                    }
                )
            }
        , T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "XRPlaneSet" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "typeReference")
                ( T.TypeReference
                    { identifier_or_firstNode_or_stringKeyword: inj
                        (Proxy :: Proxy "identifier")
                        (T.Identifier { text: "Set" })
                    , typeReference:
                        [ T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "XRPlane" })
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
        , T.TypeAliasDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "XRAnchorSet" }
            , typeParameter: []
            , functionType_or_unionType_or_typeReference_or_tupleType: inj
                (Proxy :: Proxy "typeReference")
                ( T.TypeReference
                    { identifier_or_firstNode_or_stringKeyword: inj
                        (Proxy :: Proxy "identifier")
                        (T.Identifier { text: "Set" })
                    , typeReference:
                        [ T.TypeReference
                            { identifier_or_firstNode_or_stringKeyword: inj
                                (Proxy :: Proxy "identifier")
                                (T.Identifier { text: "XRAnchor" })
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
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }