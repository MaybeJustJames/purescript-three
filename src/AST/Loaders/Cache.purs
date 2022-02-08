module AST.Loaders.Cache where

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
            , identifier: T.Identifier { text: "Cache" }
            , moduleBlock: T.ModuleBlock
                { firstStatement:
                    [ T.FirstStatement
                        { variableDeclarationList: T.VariableDeclarationList
                            { variableDeclaration: T.VariableDeclaration
                                { identifier: T.Identifier { text: "enabled" }
                                , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                                    inj (Proxy :: Proxy "booleanKeyword")
                                      (T.BooleanKeyword { text: "boolean" })
                                }
                            }
                        , exportKeyword: Nothing
                        }
                    , T.FirstStatement
                        { variableDeclarationList: T.VariableDeclarationList
                            { variableDeclaration: T.VariableDeclaration
                                { identifier: T.Identifier { text: "files" }
                                , booleanKeyword_or_anyKeyword_or_typeReference_or_numberKeyword_or_stringKeyword_or_typeLiteral:
                                    inj (Proxy :: Proxy "anyKeyword")
                                      (T.AnyKeyword { text: "any" })
                                }
                            }
                        , exportKeyword: Nothing
                        }
                    ]
                , functionDeclaration:
                    [ T.FunctionDeclaration
                        { identifier: T.Identifier { text: "add" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "key" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "stringKeyword")
                                      (T.StringKeyword { text: "string" })
                                }
                            , T.Parameter
                                { identifier: T.Identifier { text: "file" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "anyKeyword")
                                      (T.AnyKeyword { text: "any" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "voidKeyword")
                              (T.VoidKeyword { text: "void" })
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "get" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "key" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "stringKeyword")
                                      (T.StringKeyword { text: "string" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "anyKeyword")
                              (T.AnyKeyword { text: "any" })
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "remove" }
                        , parameter:
                            [ T.Parameter
                                { identifier: T.Identifier { text: "key" }
                                , typeReference_or_questionToken_or_numberKeyword_or_anyKeyword_or_unionType_or_stringKeyword_or_functionType_or_typeLiteral_or_objectKeyword_or_booleanKeyword_or_arrayType_or_thisType_or_intersectionType_or_dotDotDotToken_or_literalType:
                                    inj (Proxy :: Proxy "stringKeyword")
                                      (T.StringKeyword { text: "string" })
                                }
                            ]
                        , voidKeyword_or_anyKeyword_or_numberKeyword_or_stringKeyword_or_typeReference_or_unionType_or_arrayType_or_booleanKeyword_or_literalType_or_exportKeyword:
                            inj (Proxy :: Proxy "voidKeyword")
                              (T.VoidKeyword { text: "void" })
                        }
                    , T.FunctionDeclaration
                        { identifier: T.Identifier { text: "clear" }
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