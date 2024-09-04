{-| Information about GHC releases, etc.

One common use case for this is creating flexible sets of language extensions
depending on the versions of GHC you support. See the examples below.
-}
let p =
      { LanguageEdition = ./LanguageEdition/package.dhall
      , Release = ./Release/package.dhall
      }

let edition = p.LanguageEdition

let ghc = p.Release

let -- Removes all the extra information from `edition.compatibleWith` to
    -- produce something that can be used in a Cabal stanza.
    compat =
      λ(ed : edition.Type) →
      λ(minimumGhcVersion : ghc.Type) →
        let generated = edition.compatibleWith ed minimumGhcVersion.version

        in  { language = generated.baseEdition.name
            , defaultExtensions = generated.additionalExtensions
            }

let Haskell2010-for-GHC-9-10 =
        assert
      :   compat edition.Haskell2010 ghc.v9-10-1
        ≡ { language = "Haskell2010", defaultExtensions = [] : List Text }

let GHC2021-for-GHC-9-10 =
        assert
      :   compat edition.GHC2021 ghc.v9-10-1
        ≡ { language = "GHC2021", defaultExtensions = [] : List Text }

let GHC2024-for-GHC-9-10 =
        assert
      :   compat edition.GHC2024 ghc.v9-10-1
        ≡ { language = "GHC2024", defaultExtensions = [] : List Text }

let Haskell2010-for-GHC-9-2 =
        assert
      :   compat edition.Haskell2010 ghc.v9-2-1
        ≡ { language = "Haskell2010", defaultExtensions = [] : List Text }

let GHC2021-for-GHC-9-2 =
        assert
      :   compat edition.GHC2021 ghc.v9-2-1
        ≡ { language = "GHC2021", defaultExtensions = [] : List Text }

let GHC2024-for-GHC-9-2 =
        assert
      :   compat edition.GHC2024 ghc.v9-2-1
        ≡ { language = "GHC2021"
          , defaultExtensions =
            [ "DataKinds"
            , "DerivingStrategies"
            , "DisambiguateRecordFields"
            , "ExplicitNamespaces"
            , "GADTs"
            , "LambdaCase"
            , "MonoLocalBinds"
            , "RoleAnnotations"
            ]
          }

let Haskell2010-for-GHC-8-6 =
        assert
      :   compat edition.Haskell2010 ghc.v8-6-1
        ≡ { language = "Haskell2010", defaultExtensions = [] : List Text }

let GHC2021-for-GHC-8-6 =
        assert
      :   compat edition.GHC2021 ghc.v8-6-1
        ≡ { language = "Haskell2010"
          , defaultExtensions =
            [ "BangPatterns"
            , "BinaryLiterals"
            , "ConstrainedClassMethods"
            , "ConstraintKinds"
            , "DeriveDataTypeable"
            , "DeriveFoldable"
            , "DeriveFunctor"
            , "DeriveGeneric"
            , "DeriveTraversable"
            , "DerivingStrategies"
            , "EmptyCase"
            , "EmptyDataDeriving"
            , "ExistentialQuantification"
            , "ExplicitForAll"
            , "FlexibleContexts"
            , "FlexibleInstances"
            , "GADTSyntax"
            , "GeneralizedNewtypeDeriving"
            , "InstanceSigs"
            , "KindSignatures"
            , "MultiParamTypeClasses"
            , "NamedFieldPuns"
            , "NamedWildCards"
            , "PolyKinds"
            , "PostfixOperators"
            , "RankNTypes"
            , "ScopedTypeVariables"
            , "StandaloneDeriving"
            , "TupleSections"
            , "TypeOperators"
            , "TypeSynonymInstances"
            , "NoExplicitNamespaces"
            , "TypeApplications"
            , "HexFloatLiterals"
            , "NumericUnderscores"
            ]
          }

let GHC2024-for-GHC-8-6 =
        assert
      :   compat edition.GHC2024 ghc.v8-6-1
        ≡ { language = "Haskell2010"
          , defaultExtensions =
            [ "BangPatterns"
            , "BinaryLiterals"
            , "ConstrainedClassMethods"
            , "ConstraintKinds"
            , "DeriveDataTypeable"
            , "DeriveFoldable"
            , "DeriveFunctor"
            , "DeriveGeneric"
            , "DeriveTraversable"
            , "DerivingStrategies"
            , "EmptyCase"
            , "EmptyDataDeriving"
            , "ExistentialQuantification"
            , "ExplicitForAll"
            , "FlexibleContexts"
            , "FlexibleInstances"
            , "GADTSyntax"
            , "GeneralizedNewtypeDeriving"
            , "InstanceSigs"
            , "KindSignatures"
            , "MultiParamTypeClasses"
            , "NamedFieldPuns"
            , "NamedWildCards"
            , "PolyKinds"
            , "PostfixOperators"
            , "RankNTypes"
            , "ScopedTypeVariables"
            , "StandaloneDeriving"
            , "TupleSections"
            , "TypeOperators"
            , "TypeSynonymInstances"
            , "NoExplicitNamespaces"
            , "TypeApplications"
            , "HexFloatLiterals"
            , "NumericUnderscores"
            , "DataKinds"
            , "DerivingStrategies"
            , "DisambiguateRecordFields"
            , "ExplicitNamespaces"
            , "GADTs"
            , "LambdaCase"
            , "MonoLocalBinds"
            , "RoleAnnotations"
            ]
          }

let Haskell2010-for-GHC-7-10 =
        assert
      :   compat edition.Haskell2010 ghc.v7-10-3
        ≡ { language = "Haskell2010", defaultExtensions = [] : List Text }

let GHC2021-for-GHC-7-10 =
        assert
      :   compat edition.GHC2021 ghc.v7-10-3
        ≡ { language = "Haskell2010"
          , defaultExtensions =
            [ "BangPatterns"
            , "BinaryLiterals"
            , "ConstrainedClassMethods"
            , "ConstraintKinds"
            , "DeriveDataTypeable"
            , "DeriveFoldable"
            , "DeriveFunctor"
            , "DeriveGeneric"
            , "DeriveTraversable"
            , "DerivingStrategies"
            , "EmptyCase"
            , "EmptyDataDeriving"
            , "ExistentialQuantification"
            , "ExplicitForAll"
            , "FlexibleContexts"
            , "FlexibleInstances"
            , "GADTSyntax"
            , "GeneralizedNewtypeDeriving"
            , "InstanceSigs"
            , "KindSignatures"
            , "MultiParamTypeClasses"
            , "NamedFieldPuns"
            , "NamedWildCards"
            , "PolyKinds"
            , "PostfixOperators"
            , "RankNTypes"
            , "ScopedTypeVariables"
            , "StandaloneDeriving"
            , "TupleSections"
            , "TypeOperators"
            , "TypeSynonymInstances"
            , "NoExplicitNamespaces"
            ]
          }

let -- NB: Relative to `GHC2024-for-GHC-8-6`, this is missing a few extensions.
    --     That’s because they didn’t exist in GHC 7.10, so we can only
    --    _approximate_ the GHC2024 edition.
    GHC2024-for-GHC-7-10 =
        assert
      :   compat edition.GHC2024 ghc.v7-10-3
        ≡ { language = "Haskell2010"
          , defaultExtensions =
            [ "BangPatterns"
            , "BinaryLiterals"
            , "ConstrainedClassMethods"
            , "ConstraintKinds"
            , "DeriveDataTypeable"
            , "DeriveFoldable"
            , "DeriveFunctor"
            , "DeriveGeneric"
            , "DeriveTraversable"
            , "DerivingStrategies"
            , "EmptyCase"
            , "EmptyDataDeriving"
            , "ExistentialQuantification"
            , "ExplicitForAll"
            , "FlexibleContexts"
            , "FlexibleInstances"
            , "GADTSyntax"
            , "GeneralizedNewtypeDeriving"
            , "InstanceSigs"
            , "KindSignatures"
            , "MultiParamTypeClasses"
            , "NamedFieldPuns"
            , "NamedWildCards"
            , "PolyKinds"
            , "PostfixOperators"
            , "RankNTypes"
            , "ScopedTypeVariables"
            , "StandaloneDeriving"
            , "TupleSections"
            , "TypeOperators"
            , "TypeSynonymInstances"
            , "NoExplicitNamespaces"
            , "DataKinds"
            , "DerivingStrategies"
            , "DisambiguateRecordFields"
            , "ExplicitNamespaces"
            , "GADTs"
            , "LambdaCase"
            , "MonoLocalBinds"
            , "RoleAnnotations"
            ]
          }

in  p
