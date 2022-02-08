module AST.Geometries.Geometries where

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
                (T.StringLiteral { text: "'./BoxGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./CircleGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./ConeGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./CylinderGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./DodecahedronGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./EdgesGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./ExtrudeGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./IcosahedronGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./LatheGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./OctahedronGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./PlaneGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./PolyhedronGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./RingGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./ShapeGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./SphereGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./TetrahedronGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./TorusGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./TorusKnotGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./TubeGeometry'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./WireframeGeometry'" })
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }