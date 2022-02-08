module TSAST where

import Data.Maybe (Maybe)
import Data.Variant (Variant)
import Data.Newtype (class Newtype)

newtype SourceFile = SourceFile
  { importDeclaration :: Array ImportDeclaration
  , interfaceDeclaration :: Array InterfaceDeclaration
  , classDeclaration_or_moduleDeclaration_or_firstStatement_or_exportDeclaration_or_typeAliasDeclaration_or_functionDeclaration_or_enumDeclaration ::
      Variant
        ( classDeclaration :: Array ClassDeclaration
        , moduleDeclaration :: Array ModuleDeclaration
        , firstStatement :: Array FirstStatement
        , exportDeclaration :: Array ExportDeclaration
        , typeAliasDeclaration :: Array TypeAliasDeclaration
        , functionDeclaration :: Array FunctionDeclaration
        , enumDeclaration :: Array EnumDeclaration
        )
  , endOfFileToken :: EndOfFileToken
  }

derive instance newtypeSourceFile :: Newtype SourceFile _
newtype ImportDeclaration = ImportDeclaration
  { importClause :: ImportClause, stringLiteral :: StringLiteral }

derive instance newtypeImportDeclaration :: Newtype ImportDeclaration _
newtype ImportClause = ImportClause
  { namedImports_or_namespaceImport ::
      Variant (namedImports :: NamedImports, namespaceImport :: NamespaceImport)
  }

derive instance newtypeImportClause :: Newtype ImportClause _
newtype NamedImports = NamedImports { importSpecifier :: Array ImportSpecifier }

derive instance newtypeNamedImports :: Newtype NamedImports _
newtype ImportSpecifier = ImportSpecifier { identifier :: Identifier }

derive instance newtypeImportSpecifier :: Newtype ImportSpecifier _
newtype Identifier = Identifier { text :: String }

derive instance newtypeIdentifier :: Newtype Identifier _
newtype StringLiteral = StringLiteral { text :: String }

derive instance newtypeStringLiteral :: Newtype StringLiteral _
newtype InterfaceDeclaration = InterfaceDeclaration
  { exportKeyword :: ExportKeyword
  , identifier :: Identifier
  , propertySignature :: Array PropertySignature
  , methodSignature :: Array MethodSignature
  , heritageClause :: Maybe HeritageClause
  , indexSignature :: Maybe IndexSignature
  , typeParameter :: Maybe TypeParameter
  , constructSignature :: Maybe ConstructSignature
  }

derive instance newtypeInterfaceDeclaration :: Newtype InterfaceDeclaration _
newtype ExportKeyword = ExportKeyword { text :: String }

derive instance newtypeExportKeyword :: Newtype ExportKeyword _
newtype PropertySignature = PropertySignature
  { identifier :: Identifier
  , stringKeyword_or_typeReference_or_numberKeyword_or_arrayType_or_questionToken_or_anyKeyword_or_booleanKeyword_or_unionType_or_literalType_or_typeLiteral_or_readonlyKeyword ::
      Variant
        ( stringKeyword :: StringKeyword
        , typeReference :: TypeReference
        , numberKeyword :: NumberKeyword
        , arrayType :: ArrayType
        , questionToken :: QuestionToken
        , anyKeyword :: AnyKeyword
        , booleanKeyword :: BooleanKeyword
        , unionType :: UnionType
        , literalType :: LiteralType
        , typeLiteral :: TypeLiteral
        , readonlyKeyword :: ReadonlyKeyword
        )
  }

derive instance newtypePropertySignature :: Newtype PropertySignature _
newtype StringKeyword = StringKeyword { text :: String }

derive instance newtypeStringKeyword :: Newtype StringKeyword _
newtype TypeReference = TypeReference
  { identifier_or_firstNode_or_stringKeyword ::
      Variant
        ( identifier :: Identifier
        , firstNode :: FirstNode
        , stringKeyword :: StringKeyword
        )
  , typeReference :: Array TypeReference
  , anyKeyword :: Maybe AnyKeyword
  , unionType :: Maybe UnionType
  , arrayType :: Maybe ArrayType
  , typeLiteral :: Maybe TypeLiteral
  , thisType :: Maybe ThisType
  , numberKeyword :: Maybe NumberKeyword
  , voidKeyword :: Maybe VoidKeyword
  , booleanKeyword :: Maybe BooleanKeyword
  , functionType :: Maybe FunctionType
  }

derive instance newtypeTypeReference :: Newtype TypeReference _
newtype MethodSignature = MethodSignature
  { identifier :: Identifier
  , typeReference_or_anyKeyword_or_parameter_or_stringKeyword_or_numberKeyword_or_voidKeyword_or_unionType_or_arrayType_or_questionToken_or_thisType_or_booleanKeyword ::
      Variant
        ( typeReference :: TypeReference
        , anyKeyword :: AnyKeyword
        , parameter :: Array Parameter
        , stringKeyword :: StringKeyword
        , numberKeyword :: NumberKeyword
        , voidKeyword :: VoidKeyword
        , unionType :: UnionType
        , arrayType :: ArrayType
        , questionToken :: QuestionToken
        , thisType :: ThisType
        , booleanKeyword :: BooleanKeyword
        )
  }

derive instance newtypeMethodSignature :: Newtype MethodSignature _
newtype AnyKeyword = AnyKeyword { text :: String }

derive instance newtypeAnyKeyword :: Newtype AnyKeyword _
newtype ClassDeclaration = ClassDeclaration
  { exportKeyword :: Maybe ExportKeyword
  , identifier :: Identifier
  , heritageClause :: Maybe HeritageClause
  , constructor :: Array Constructor
  , propertyDeclaration :: Array PropertyDeclaration
  , methodDeclaration :: Array MethodDeclaration
  , typeParameter :: Array TypeParameter
  , setAccessor :: Maybe SetAccessor
  , getAccessor :: Array GetAccessor
  , firstContextualKeyword :: Maybe FirstContextualKeyword
  }

derive instance newtypeClassDeclaration :: Newtype ClassDeclaration _
newtype HeritageClause = HeritageClause
  { expressionWithTypeArguments :: ExpressionWithTypeArguments }

derive instance newtypeHeritageClause :: Newtype HeritageClause _
newtype ExpressionWithTypeArguments = ExpressionWithTypeArguments
  { identifier :: Identifier, typeReference :: Array TypeReference }

derive instance newtypeExpressionWithTypeArguments ::
  Newtype ExpressionWithTypeArguments _

newtype Constructor = Constructor { parameter :: Array Parameter }

derive instance newtypeConstructor :: Newtype Constructor _
newtype Parameter = Parameter
  { identifier :: Identifier
  , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType ::
      Variant
        ( typeReference :: TypeReference
        , questionToken :: QuestionToken
        , numberKeyword :: NumberKeyword
        , anyKeyword :: AnyKeyword
        , unionType :: UnionType
        , stringKeyword :: StringKeyword
        , functionType :: FunctionType
        , typeLiteral :: TypeLiteral
        , objectKeyword :: ObjectKeyword
        , booleanKeyword :: BooleanKeyword
        , arrayType :: ArrayType
        , thisType :: ThisType
        , intersectionType :: IntersectionType
        , dotDotDotToken :: DotDotDotToken
        , literalType :: LiteralType
        )
  }

derive instance newtypeParameter :: Newtype Parameter _
newtype QuestionToken = QuestionToken { text :: String }

derive instance newtypeQuestionToken :: Newtype QuestionToken _
newtype NumberKeyword = NumberKeyword { text :: String }

derive instance newtypeNumberKeyword :: Newtype NumberKeyword _
newtype PropertyDeclaration = PropertyDeclaration
  { identifier :: Identifier
  , stringKeyword_or_typeReference_or_numberKeyword_or_readonlyKeyword_or_literalType_or_unionType_or_booleanKeyword_or_functionType_or_typeLiteral_or_questionToken_or_arrayType_or_anyKeyword_or_staticKeyword_or_trueKeyword ::
      Variant
        ( stringKeyword :: StringKeyword
        , typeReference :: TypeReference
        , numberKeyword :: NumberKeyword
        , readonlyKeyword :: ReadonlyKeyword
        , literalType :: LiteralType
        , unionType :: UnionType
        , booleanKeyword :: BooleanKeyword
        , functionType :: FunctionType
        , typeLiteral :: TypeLiteral
        , questionToken :: QuestionToken
        , arrayType :: ArrayType
        , anyKeyword :: AnyKeyword
        , staticKeyword :: StaticKeyword
        , trueKeyword :: TrueKeyword
        )
  }

derive instance newtypePropertyDeclaration :: Newtype PropertyDeclaration _
newtype ReadonlyKeyword = ReadonlyKeyword { text :: String }

derive instance newtypeReadonlyKeyword :: Newtype ReadonlyKeyword _
newtype LiteralType = LiteralType
  { trueKeyword_or_stringLiteral_or_nullKeyword_or_firstLiteralToken ::
      Variant
        ( trueKeyword :: TrueKeyword
        , stringLiteral :: StringLiteral
        , nullKeyword :: NullKeyword
        , firstLiteralToken :: FirstLiteralToken
        )
  }

derive instance newtypeLiteralType :: Newtype LiteralType _
newtype TrueKeyword = TrueKeyword { text :: String }

derive instance newtypeTrueKeyword :: Newtype TrueKeyword _
newtype MethodDeclaration = MethodDeclaration
  { identifier :: Identifier
  , typeReference_or_anyKeyword_or_parameter_or_voidKeyword_or_thisType_or_unionType_or_arrayType_or_stringKeyword_or_typeParameter_or_typeLiteral_or_numberKeyword_or_objectKeyword_or_staticKeyword_or_functionType_or_booleanKeyword_or_conditionalType ::
      Variant
        ( typeReference :: TypeReference
        , anyKeyword :: AnyKeyword
        , parameter :: Array Parameter
        , voidKeyword :: VoidKeyword
        , thisType :: ThisType
        , unionType :: UnionType
        , arrayType :: ArrayType
        , stringKeyword :: StringKeyword
        , typeParameter :: TypeParameter
        , typeLiteral :: TypeLiteral
        , numberKeyword :: NumberKeyword
        , objectKeyword :: ObjectKeyword
        , staticKeyword :: StaticKeyword
        , functionType :: FunctionType
        , booleanKeyword :: BooleanKeyword
        , conditionalType :: ConditionalType
        )
  }

derive instance newtypeMethodDeclaration :: Newtype MethodDeclaration _
newtype EndOfFileToken = EndOfFileToken { text :: String }

derive instance newtypeEndOfFileToken :: Newtype EndOfFileToken _
newtype UnionType = UnionType
  { typeReference :: Array TypeReference
  , literalType :: Array LiteralType
  , numberKeyword :: Maybe NumberKeyword
  , stringKeyword :: Maybe StringKeyword
  , undefinedKeyword :: Maybe UndefinedKeyword
  , objectKeyword :: Maybe ObjectKeyword
  , parenthesizedType :: Maybe ParenthesizedType
  , arrayType :: Array ArrayType
  , typeLiteral :: Maybe TypeLiteral
  , booleanKeyword :: Maybe BooleanKeyword
  }

derive instance newtypeUnionType :: Newtype UnionType _
newtype NullKeyword = NullKeyword { text :: String }

derive instance newtypeNullKeyword :: Newtype NullKeyword _
newtype BooleanKeyword = BooleanKeyword { text :: String }

derive instance newtypeBooleanKeyword :: Newtype BooleanKeyword _
newtype FunctionType = FunctionType
  { parameter :: Array Parameter
  , voidKeyword_or_stringKeyword_or_typeParameter_or_anyKeyword_or_numberKeyword ::
      Variant
        ( voidKeyword :: VoidKeyword
        , stringKeyword :: StringKeyword
        , typeParameter :: TypeParameter
        , anyKeyword :: AnyKeyword
        , numberKeyword :: NumberKeyword
        )
  }

derive instance newtypeFunctionType :: Newtype FunctionType _
newtype VoidKeyword = VoidKeyword { text :: String }

derive instance newtypeVoidKeyword :: Newtype VoidKeyword _
newtype TypeLiteral = TypeLiteral
  { indexSignature :: Maybe IndexSignature
  , propertySignature :: Array PropertySignature
  }

derive instance newtypeTypeLiteral :: Newtype TypeLiteral _
newtype IndexSignature = IndexSignature
  { parameter :: Parameter
  , typeReference_or_stringKeyword_or_unionType_or_numberKeyword_or_anyKeyword_or_arrayType ::
      Variant
        ( typeReference :: TypeReference
        , stringKeyword :: StringKeyword
        , unionType :: UnionType
        , numberKeyword :: NumberKeyword
        , anyKeyword :: AnyKeyword
        , arrayType :: ArrayType
        )
  }

derive instance newtypeIndexSignature :: Newtype IndexSignature _
newtype ThisType = ThisType { text :: String }

derive instance newtypeThisType :: Newtype ThisType _
newtype UndefinedKeyword = UndefinedKeyword { text :: String }

derive instance newtypeUndefinedKeyword :: Newtype UndefinedKeyword _
newtype ObjectKeyword = ObjectKeyword { text :: String }

derive instance newtypeObjectKeyword :: Newtype ObjectKeyword _
newtype ModuleDeclaration = ModuleDeclaration
  { exportKeyword :: ExportKeyword
  , identifier :: Identifier
  , moduleBlock :: ModuleBlock
  }

derive instance newtypeModuleDeclaration :: Newtype ModuleDeclaration _
newtype ModuleBlock = ModuleBlock
  { firstStatement :: Array FirstStatement
  , functionDeclaration :: Array FunctionDeclaration
  , exportDeclaration :: Maybe ExportDeclaration
  , classDeclaration :: Maybe ClassDeclaration
  }

derive instance newtypeModuleBlock :: Newtype ModuleBlock _
newtype FirstStatement = FirstStatement
  { variableDeclarationList :: VariableDeclarationList
  , exportKeyword :: Maybe ExportKeyword
  }

derive instance newtypeFirstStatement :: Newtype FirstStatement _
newtype VariableDeclarationList = VariableDeclarationList
  { variableDeclaration :: VariableDeclaration }

derive instance newtypeVariableDeclarationList ::
  Newtype VariableDeclarationList _

newtype VariableDeclaration = VariableDeclaration
  { identifier :: Identifier
  , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral ::
      Variant
        ( booleanKeyword :: BooleanKeyword
        , anyKeyword :: AnyKeyword
        , typeReference :: TypeReference
        , numberKeyword :: NumberKeyword
        , stringKeyword :: StringKeyword
        , typeLiteral :: TypeLiteral
        )
  }

derive instance newtypeVariableDeclaration :: Newtype VariableDeclaration _
newtype FunctionDeclaration = FunctionDeclaration
  { identifier :: Identifier
  , parameter :: Array Parameter
  , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword ::
      Variant
        ( voidKeyword :: VoidKeyword
        , anyKeyword :: AnyKeyword
        , numberKeyword :: NumberKeyword
        , stringKeyword :: StringKeyword
        , typeReference :: TypeReference
        , unionType :: UnionType
        , arrayType :: ArrayType
        , booleanKeyword :: BooleanKeyword
        , literalType :: LiteralType
        , exportKeyword :: ExportKeyword
        )
  }

derive instance newtypeFunctionDeclaration :: Newtype FunctionDeclaration _
newtype ArrayType = ArrayType
  { stringKeyword_or_typeReference_or_anyKeyword_or_numberKeyword_or_arrayType_or_objectKeyword ::
      Variant
        ( stringKeyword :: StringKeyword
        , typeReference :: TypeReference
        , anyKeyword :: AnyKeyword
        , numberKeyword :: NumberKeyword
        , arrayType :: ArrayType
        , objectKeyword :: ObjectKeyword
        )
  }

derive instance newtypeArrayType :: Newtype ArrayType _
newtype ParenthesizedType = ParenthesizedType
  { functionType_or_intersectionType ::
      Variant
        (functionType :: FunctionType, intersectionType :: IntersectionType)
  }

derive instance newtypeParenthesizedType :: Newtype ParenthesizedType _
newtype TypeParameter = TypeParameter
  { identifier :: Identifier
  , typeReference :: Array TypeReference
  , unionType :: Array UnionType
  , indexedAccessType :: Maybe IndexedAccessType
  , anyKeyword :: Maybe AnyKeyword
  , objectKeyword :: Maybe ObjectKeyword
  }

derive instance newtypeTypeParameter :: Newtype TypeParameter _
newtype StaticKeyword = StaticKeyword { text :: String }

derive instance newtypeStaticKeyword :: Newtype StaticKeyword _
newtype ExportDeclaration = ExportDeclaration
  { stringLiteral_or_namedExports ::
      Variant (stringLiteral :: StringLiteral, namedExports :: NamedExports)
  }

derive instance newtypeExportDeclaration :: Newtype ExportDeclaration _
newtype TypeAliasDeclaration = TypeAliasDeclaration
  { exportKeyword :: ExportKeyword
  , identifier :: Identifier
  , typeParameter :: Array TypeParameter
  , functionType_or_unionType_or_typeReference_or_tupleType ::
      Variant
        ( functionType :: FunctionType
        , unionType :: UnionType
        , typeReference :: TypeReference
        , tupleType :: TupleType
        )
  }

derive instance newtypeTypeAliasDeclaration :: Newtype TypeAliasDeclaration _
newtype IntersectionType = IntersectionType
  { typeReference_or_stringKeyword ::
      Variant (typeReference :: TypeReference, stringKeyword :: StringKeyword)
  , typeLiteral :: Array TypeLiteral
  }

derive instance newtypeIntersectionType :: Newtype IntersectionType _
newtype IndexedAccessType = IndexedAccessType
  { typeReference :: TypeReference, literalType :: LiteralType }

derive instance newtypeIndexedAccessType :: Newtype IndexedAccessType _
newtype DotDotDotToken = DotDotDotToken { text :: String }

derive instance newtypeDotDotDotToken :: Newtype DotDotDotToken _
newtype SetAccessor = SetAccessor
  { identifier :: Identifier, parameter :: Parameter }

derive instance newtypeSetAccessor :: Newtype SetAccessor _
newtype GetAccessor = GetAccessor
  { identifier :: Identifier
  , numberKeyword_or_typeReference ::
      Variant (numberKeyword :: NumberKeyword, typeReference :: TypeReference)
  }

derive instance newtypeGetAccessor :: Newtype GetAccessor _
newtype FirstLiteralToken = FirstLiteralToken { text :: String }

derive instance newtypeFirstLiteralToken :: Newtype FirstLiteralToken _
newtype NamedExports = NamedExports { exportSpecifier :: Array ExportSpecifier }

derive instance newtypeNamedExports :: Newtype NamedExports _
newtype ExportSpecifier = ExportSpecifier { identifier :: Array Identifier }

derive instance newtypeExportSpecifier :: Newtype ExportSpecifier _
newtype EnumDeclaration = EnumDeclaration
  { exportKeyword :: ExportKeyword
  , identifier :: Identifier
  , enumMember :: Array EnumMember
  }

derive instance newtypeEnumDeclaration :: Newtype EnumDeclaration _
newtype EnumMember = EnumMember
  { stringLiteral_or_identifier_or_firstLiteralToken ::
      Variant
        ( stringLiteral :: StringLiteral
        , identifier :: Identifier
        , firstLiteralToken :: FirstLiteralToken
        )
  }

derive instance newtypeEnumMember :: Newtype EnumMember _
newtype ConstructSignature = ConstructSignature
  { parameter :: Parameter, typeReference :: TypeReference }

derive instance newtypeConstructSignature :: Newtype ConstructSignature _
newtype ConditionalType = ConditionalType
  { typeReference :: Array TypeReference }

derive instance newtypeConditionalType :: Newtype ConditionalType _
newtype FirstNode = FirstNode { identifier :: Array Identifier }

derive instance newtypeFirstNode :: Newtype FirstNode _
newtype TupleType = TupleType { numberKeyword :: Array NumberKeyword }

derive instance newtypeTupleType :: Newtype TupleType _
newtype FirstContextualKeyword = FirstContextualKeyword { text :: String }

derive instance newtypeFirstContextualKeyword ::
  Newtype FirstContextualKeyword _

newtype NamespaceImport = NamespaceImport { identifier :: Identifier }

derive instance newtypeNamespaceImport :: Newtype NamespaceImport _