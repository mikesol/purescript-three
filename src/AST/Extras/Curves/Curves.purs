module AST.Extras.Curves.Curves where

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
                (T.StringLiteral { text: "'./ArcCurve'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./CatmullRomCurve3'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./CubicBezierCurve'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./CubicBezierCurve3'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./EllipseCurve'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./LineCurve'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./LineCurve3'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./QuadraticBezierCurve'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./QuadraticBezierCurve3'" })
            }
        , T.ExportDeclaration
            { stringLiteral_or_namedExports: inj
                (Proxy :: Proxy "stringLiteral")
                (T.StringLiteral { text: "'./SplineCurve'" })
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }