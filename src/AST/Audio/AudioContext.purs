module AST.Audio.AudioContext where

import Data.Maybe (Maybe(..))
import Data.Variant (inj)
import Type.Proxy (Proxy(..))
import TSAST as T

ast :: T.SourceFile
ast = T.SourceFile
  { importDeclaration: []
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "moduleDeclaration")
        [ T.ModuleDeclaration
            { exportKeyword: T.ExportKeyword { text: "export" }
            , identifier: T.Identifier { text: "AudioContext" }
            , moduleBlock: T.ModuleBlock
                { firstStatement: []
                , functionDeclaration:
                    [ T.FunctionDeclaration
                        { identifier: T.Identifier { text: "getContext" }
                        , parameter: []
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "typeReference")
                              ( T.TypeReference
                                  { identifier_or_firstNode_or_stringKeyword:
                                      inj (Proxy :: Proxy "identifier")
                                        (T.Identifier { text: "AudioContext" })
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
                        { identifier: T.Identifier { text: "setContext" }
                        , parameter: []
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "voidKeyword")
                              (T.VoidKeyword { text: "void" })
                        }
                    ]
                , exportDeclaration: Nothing
                , classDeclaration: Nothing
                }
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }