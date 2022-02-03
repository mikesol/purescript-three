module TSAST where

import Foreign (Foreign)
import Data.Variant (Variant)

newtype Unit_ = Unit_ Foreign

newtype SourceFile = SourceFile
  ( Array
      ( Variant
          ( importDeclaration :: ImportDeclaration
          , classDeclaration :: ClassDeclaration
          , interfaceDeclaration :: InterfaceDeclaration
          , enumDeclaration :: EnumDeclaration
          , typeAliasDeclaration :: Type_
          , constDeclaration :: ConstDeclaration
          )
      )
  )

-- in three.js types, enums are assigned their values afterwards
-- under the hood, they are always ints
-- so here, it will always be an empty data decl, and we'll link them up later
newtype EnumDeclaration = EnumDeclaration { name :: String }

newtype FunctionDefinition = FunctionDefinition
  { identifier :: String
  , parameters :: Array Parameter
  , returns :: Type_
  }

newtype ConstDeclaration = ConstDeclaration
  { identifier :: String
  , type_ :: Type_
  }

newtype InterfaceDeclaration = InterfaceDeclaration
  { properties :: Array PropertyDeclaration
  , functions :: Array FunctionDefinition
  }

newtype ImportDeclaration = ImportDeclaration
  { importClause :: ImportClause
  , stringLiteral :: String
  }

newtype ImportClause = ImportClause
  ( Variant
      ( namedImports :: Array String
      , identifier :: String
      , namespaceImport :: String
      )
  )

newtype ClassDeclaration = ClassDeclaration
  { identifier :: String
  , export :: Boolean
  , constructor :: Array Parameter
  , properties :: Array PropertyDeclaration
  , methods :: Array MethodDeclaration
  }

newtype LiteralType = LiteralType
  ( Variant
      ( number :: Unit_
      , string :: Unit_
      , typeReference :: String
      , true_ :: Unit_
      , false_ :: Unit_
      , null :: Unit_
      )
  )

newtype Type_ = Type_
  ( Variant
      ( number :: Unit_
      , string :: Unit_
      , union :: Array Type_
      , array :: Type_
      , any :: Unit_
      , null :: Unit_
      , typeReference :: String
      , literal :: LiteralType
      )
  )

newtype Parameter = Parameter
  { identifier :: String
  , optional :: Boolean
  , type_ :: Type_
  }

newtype PropertyDeclaration = PropertyDeclaration
  { readOnly :: Boolean
  , identifier :: String
  , type_ :: Type_
  }

newtype MethodReturnType = MethodReturnType
  ( Variant
      ( this :: Unit_
      , type_ :: Type_
      )
  )

newtype MethodDeclaration = MethodDeclaration
  { static :: Boolean
  , identifier :: String
  , parameters :: Array Parameter
  , returns :: MethodReturnType
  }