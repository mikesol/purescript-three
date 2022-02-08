module AST.Renderers.Shaders.UniformsUtils where

import Data.Variant (inj)
import Type.Proxy (Proxy(..))
import TSAST as T

ast :: T.SourceFile
ast = T.SourceFile
  { importDeclaration: []
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "functionDeclaration")
        [ T.FunctionDeclaration
            { identifier: T.Identifier { text: "cloneUniforms" }
            , parameter:
                [ T.Parameter
                    { identifier: T.Identifier { text: "uniforms_src" }
                    , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                        inj (Proxy :: Proxy "anyKeyword")
                          (T.AnyKeyword { text: "any" })
                    }
                ]
            , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                inj (Proxy :: Proxy "exportKeyword")
                  (T.ExportKeyword { text: "export" })
            }
        , T.FunctionDeclaration
            { identifier: T.Identifier { text: "mergeUniforms" }
            , parameter:
                [ T.Parameter
                    { identifier: T.Identifier { text: "uniforms" }
                    , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                        inj (Proxy :: Proxy "arrayType")
                          ( T.ArrayType
                              { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword:
                                  inj (Proxy :: Proxy "anyKeyword")
                                    (T.AnyKeyword { text: "any" })
                              }
                          )
                    }
                ]
            , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                inj (Proxy :: Proxy "exportKeyword")
                  (T.ExportKeyword { text: "export" })
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }