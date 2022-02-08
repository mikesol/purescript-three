module AST.Constants where

import Data.Maybe (Maybe(..))
import Data.Variant (inj)
import Type.Proxy (Proxy(..))
import TSAST as T

ast :: T.SourceFile
ast = T.SourceFile
  { importDeclaration: []
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "firstStatement")
        [ T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "REVISION" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "stringKeyword")
                          (T.StringKeyword { text: "string" })
                    }
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "CullFaceNone" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "CullFace" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "CullFaceBack" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "CullFace" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "CullFaceFront" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "CullFace" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "CullFaceFrontBack" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "CullFace" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "BasicShadowMap" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "ShadowMapType" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "PCFShadowMap" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "ShadowMapType" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "PCFSoftShadowMap" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "ShadowMapType" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "VSMShadowMap" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "ShadowMapType" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "FrontSide" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Side" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "BackSide" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Side" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "DoubleSide" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Side" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "FlatShading" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Shading" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "SmoothShading" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Shading" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "NoBlending" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Blending" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "NormalBlending" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Blending" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "AdditiveBlending" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Blending" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "SubtractiveBlending" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Blending" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "MultiplyBlending" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Blending" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "CustomBlending" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Blending" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "AddEquation" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "BlendingEquation" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "SubtractEquation" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "BlendingEquation" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "ReverseSubtractEquation" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "BlendingEquation" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "MinEquation" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "BlendingEquation" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "MaxEquation" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "BlendingEquation" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "ZeroFactor" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "BlendingDstFactor" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "OneFactor" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "BlendingDstFactor" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "SrcColorFactor" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "BlendingDstFactor" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "OneMinusSrcColorFactor" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "BlendingDstFactor" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "SrcAlphaFactor" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "BlendingDstFactor" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "OneMinusSrcAlphaFactor" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "BlendingDstFactor" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "DstAlphaFactor" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "BlendingDstFactor" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "OneMinusDstAlphaFactor" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "BlendingDstFactor" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "DstColorFactor" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "BlendingDstFactor" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "OneMinusDstColorFactor" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "BlendingDstFactor" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "SrcAlphaSaturateFactor" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "BlendingSrcFactor" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "NeverDepth" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "DepthModes" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "AlwaysDepth" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "DepthModes" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "LessDepth" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "DepthModes" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "LessEqualDepth" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "DepthModes" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "EqualDepth" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "DepthModes" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "GreaterEqualDepth" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "DepthModes" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "GreaterDepth" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "DepthModes" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "NotEqualDepth" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "DepthModes" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "MultiplyOperation" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Combine" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "MixOperation" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Combine" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "AddOperation" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Combine" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "NoToneMapping" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "ToneMapping" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "LinearToneMapping" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "ToneMapping" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "ReinhardToneMapping" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "ToneMapping" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "CineonToneMapping" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "ToneMapping" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "ACESFilmicToneMapping" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "ToneMapping" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "CustomToneMapping" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "ToneMapping" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "UVMapping" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Mapping" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "CubeReflectionMapping" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Mapping" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "CubeRefractionMapping" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Mapping" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "EquirectangularReflectionMapping" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Mapping" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "EquirectangularRefractionMapping" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Mapping" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "CubeUVReflectionMapping" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Mapping" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "CubeUVRefractionMapping" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Mapping" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RepeatWrapping" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Wrapping" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "ClampToEdgeWrapping" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Wrapping" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "MirroredRepeatWrapping" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "Wrapping" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "NearestFilter" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureFilter" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "NearestMipmapNearestFilter" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureFilter" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "NearestMipMapNearestFilter" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureFilter" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "NearestMipmapLinearFilter" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureFilter" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "NearestMipMapLinearFilter" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureFilter" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "LinearFilter" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureFilter" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "LinearMipmapNearestFilter" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureFilter" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "LinearMipMapNearestFilter" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureFilter" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "LinearMipmapLinearFilter" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureFilter" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "LinearMipMapLinearFilter" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureFilter" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "UnsignedByteType" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureDataType" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "ByteType" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureDataType" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "ShortType" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureDataType" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "UnsignedShortType" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureDataType" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "IntType" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureDataType" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "UnsignedIntType" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureDataType" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "FloatType" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureDataType" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "HalfFloatType" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureDataType" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "UnsignedShort4444Type" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureDataType" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "UnsignedShort5551Type" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureDataType" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "UnsignedInt248Type" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureDataType" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "AlphaFormat" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "PixelFormat" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBAFormat" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "PixelFormat" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "LuminanceFormat" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "PixelFormat" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "LuminanceAlphaFormat" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "PixelFormat" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "DepthFormat" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "PixelFormat" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "DepthStencilFormat" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "PixelFormat" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RedFormat" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "PixelFormat" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RedIntegerFormat" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "PixelFormat" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGFormat" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "PixelFormat" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGIntegerFormat" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "PixelFormat" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBAIntegerFormat" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "PixelFormat" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "_SRGBFormat" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "PixelFormat" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "_SRGBAFormat" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "PixelFormat" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGB_S3TC_DXT1_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBA_S3TC_DXT1_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBA_S3TC_DXT3_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBA_S3TC_DXT5_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "RGB_PVRTC_4BPPV1_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "RGB_PVRTC_2BPPV1_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "RGBA_PVRTC_4BPPV1_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "RGBA_PVRTC_2BPPV1_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGB_ETC1_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGB_ETC2_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBA_ETC2_EAC_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBA_ASTC_4x4_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBA_ASTC_5x4_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBA_ASTC_5x5_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBA_ASTC_6x5_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBA_ASTC_6x6_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBA_ASTC_8x5_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBA_ASTC_8x6_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBA_ASTC_8x8_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBA_ASTC_10x5_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBA_ASTC_10x6_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBA_ASTC_10x8_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "RGBA_ASTC_10x10_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "RGBA_ASTC_12x10_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "RGBA_ASTC_12x12_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBA_BPTC_Format" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "CompressedPixelFormat" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "LoopOnce" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "AnimationActionLoopStyles" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "LoopRepeat" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "AnimationActionLoopStyles" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "LoopPingPong" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "AnimationActionLoopStyles" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "InterpolateDiscrete" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "InterpolationModes" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "InterpolateLinear" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "InterpolationModes" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "InterpolateSmooth" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "InterpolationModes" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "ZeroCurvatureEnding" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "InterpolationEndingModes" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "ZeroSlopeEnding" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "InterpolationEndingModes" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "WrapAroundEnding" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "InterpolationEndingModes" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "NormalAnimationBlendMode" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "AdditiveAnimationBlendMode" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "TrianglesDrawMode" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TrianglesDrawModes" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "TriangleStripDrawMode" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TrianglesDrawModes" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "TriangleFanDrawMode" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TrianglesDrawModes" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "LinearEncoding" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureEncoding" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "sRGBEncoding" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureEncoding" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "LogLuvEncoding" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureEncoding" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBM7Encoding" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureEncoding" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBM16Encoding" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "TextureEncoding" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "BasicDepthPacking" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "DepthPackingStrategies" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "RGBADepthPacking" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  ( T.Identifier
                                      { text: "DepthPackingStrategies" }
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "TangentSpaceNormalMap" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "NormalMapTypes" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "ObjectSpaceNormalMap" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "NormalMapTypes" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "ZeroStencilOp" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "StencilOp" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "KeepStencilOp" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "StencilOp" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "ReplaceStencilOp" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "StencilOp" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "IncrementStencilOp" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "StencilOp" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "DecrementStencilOp" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "StencilOp" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "IncrementWrapStencilOp" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "StencilOp" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "DecrementWrapStencilOp" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "StencilOp" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "InvertStencilOp" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "StencilOp" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "NeverStencilFunc" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "StencilFunc" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "LessStencilFunc" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "StencilFunc" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "EqualStencilFunc" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "StencilFunc" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "LessEqualStencilFunc" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "StencilFunc" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "GreaterStencilFunc" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "StencilFunc" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "NotEqualStencilFunc" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "StencilFunc" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier
                        { text: "GreaterEqualStencilFunc" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "StencilFunc" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "AlwaysStencilFunc" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "StencilFunc" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "StaticDrawUsage" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "DynamicDrawUsage" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "StreamDrawUsage" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "StaticReadUsage" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "DynamicReadUsage" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "StreamReadUsage" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "StaticCopyUsage" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "DynamicCopyUsage" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "StreamCopyUsage" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "GLSL1" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "GLSLVersion" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        , T.FirstStatement
            { variableDeclarationList: T.VariableDeclarationList
                { variableDeclaration: T.VariableDeclaration
                    { identifier: T.Identifier { text: "GLSL3" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeReference")
                          ( T.TypeReference
                              { identifier_or_firstNode_or_stringKeyword: inj
                                  (Proxy :: Proxy "identifier")
                                  (T.Identifier { text: "GLSLVersion" })
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
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }