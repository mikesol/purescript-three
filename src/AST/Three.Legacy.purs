module AST.Three.Legacy where

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
            { stringLiteral_or_namedExports: inj (Proxy :: Proxy "namedExports")
                (T.NamedExports { exportSpecifier: [] })
            }
        ]
  , endOfFileToken: T.EndOfFileToken { text: "" }
  }