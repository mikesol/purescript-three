module AST.Renderers.Shaders.ShaderChunk where

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
                    { identifier: T.Identifier { text: "ShaderChunk" }
                    , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                        inj (Proxy :: Proxy "typeLiteral")
                          ( T.TypeLiteral
                              { indexSignature: Just
                                  ( T.IndexSignature
                                      { parameter: T.Parameter
                                          { identifier: T.Identifier
                                              { text: "name" }
                                          , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                              inj
                                                (Proxy :: Proxy "stringKeyword")
                                                ( T.StringKeyword
                                                    { text: "string" }
                                                )
                                          }
                                      , typeReference_or_stringKeyword_or_unionType_or_numberKeyword_or_anyKeyword_or_arrayType:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  )
                              , propertySignature:
                                  [ T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "alphamap_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "alphamap_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "alphatest_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "aomap_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "aomap_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "begin_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "beginnormal_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "bsdfs" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "bumpmap_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "clipping_planes_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text:
                                              "clipping_planes_pars_fragment"
                                          }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "clipping_planes_pars_vertex"
                                          }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "clipping_planes_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "color_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "color_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "color_pars_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "color_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "common" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "cube_frag" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "cube_vert" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "cube_uv_reflection_fragment"
                                          }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "defaultnormal_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "depth_frag" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "depth_vert" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "distanceRGBA_frag" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "distanceRGBA_vert" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "displacementmap_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "displacementmap_pars_vertex"
                                          }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "emissivemap_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "emissivemap_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "encodings_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "encodings_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "envmap_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "envmap_common_pars_fragment"
                                          }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "envmap_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "envmap_pars_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "envmap_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "equirect_frag" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "equirect_vert" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "fog_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "fog_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "linedashed_frag" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "linedashed_vert" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "lightmap_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "lightmap_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "lights_lambert_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "lights_pars_begin" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text:
                                              "envmap_physical_pars_fragment"
                                          }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "lights_pars_map" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "lights_phong_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "lights_phong_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "lights_physical_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text:
                                              "lights_physical_pars_fragment"
                                          }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "lights_fragment_begin" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "lights_fragment_maps" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "lights_fragment_end" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "logdepthbuf_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "logdepthbuf_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "logdepthbuf_pars_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "logdepthbuf_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "map_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "map_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "map_particle_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "map_particle_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "meshbasic_frag" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "meshbasic_vert" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "meshlambert_frag" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "meshlambert_vert" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "meshphong_frag" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "meshphong_vert" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "meshphysical_frag" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "meshphysical_vert" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "metalnessmap_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "metalnessmap_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "morphnormal_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "morphtarget_pars_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "morphtarget_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "normal_flip" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "normal_frag" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "normal_fragment_begin" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "normal_fragment_maps" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "normal_vert" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "normalmap_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text:
                                              "clearcoat_normal_fragment_begin"
                                          }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text:
                                              "clearcoat_normal_fragment_maps"
                                          }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "clearcoat_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "packing" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "points_frag" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "points_vert" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "shadow_frag" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "shadow_vert" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "premultiplied_alpha_fragment"
                                          }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "project_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "roughnessmap_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "roughnessmap_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "shadowmap_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "shadowmap_pars_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "shadowmap_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "shadowmask_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "skinbase_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "skinning_pars_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "skinning_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "skinnormal_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "specularmap_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "specularmap_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "tonemapping_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "tonemapping_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "uv2_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "uv2_pars_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "uv2_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "uv_pars_fragment" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "uv_pars_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "uv_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  , T.PropertySignature
                                      { identifier: T.Identifier
                                          { text: "worldpos_vertex" }
                                      , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword:
                                          inj (Proxy :: Proxy "stringKeyword")
                                            (T.StringKeyword { text: "string" })
                                      }
                                  ]
                              }
                          )
                    }
                }
            , exportKeyword: Just (T.ExportKeyword { text: "export" })
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }