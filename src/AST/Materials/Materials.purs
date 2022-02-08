module AST.Materials.Materials where

import Data.Variant (inj)
import Type.Proxy (Proxy(..))
import TSAST as T

ast :: T.SourceFile
ast = T.SourceFile
  { importDeclaration: []
  , interfaceDeclaration: []
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration:
      inj (Proxy :: Proxy "exportDeclaration")
        [ T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./ShadowMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./SpriteMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./RawShaderMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./ShaderMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./PointsMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./MeshPhysicalMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./MeshStandardMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./MeshPhongMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./MeshToonMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./MeshNormalMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./MeshLambertMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./MeshDepthMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./MeshDistanceMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./MeshBasicMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./MeshMatcapMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./LineDashedMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./LineBasicMaterial'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./Material'" })
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }