{-|
-}
let P =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let PVP = ../../PVP/package.dhall

let v = PVP.v

let v7-10-1 =
      { version = v [ 7, 10, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v7-10-2 =
      { version = v [ 7, 10, 2 ], libraries = [] : P.Map.Type Text PVP.Version }

let v7-10-3 =
      let version = v [ 7, 10, 3 ]

      in  { version
          , libraries =
            [ { mapKey = "array", mapValue = v [ 0, 5, 1, 0 ] }
            , { mapKey = "base", mapValue = v [ 4, 8, 0, 0 ] }
            , { mapKey = "binary", mapValue = v [ 0, 7, 3, 0 ] }
            , { mapKey = "bytestring", mapValue = v [ 0, 10, 6, 0 ] }
            , { mapKey = "Cabal", mapValue = v [ 1, 22, 1, 0 ] }
            , { mapKey = "containers", mapValue = v [ 0, 5, 6, 2 ] }
            , { mapKey = "deepseq", mapValue = v [ 1, 4, 1, 1 ] }
            , { mapKey = "directory", mapValue = v [ 1, 2, 2, 0 ] }
            , { mapKey = "filepath", mapValue = v [ 1, 4, 0, 0 ] }
            , { mapKey = "ghc", mapValue = version }
            , { mapKey = "ghc-prim", mapValue = v [ 0, 4, 0, 0 ] }
            , { mapKey = "haskeline", mapValue = v [ 0, 7, 2, 1 ] }
            , { mapKey = "hoopl", mapValue = v [ 3, 10, 0, 2 ] }
            , { mapKey = "hpc", mapValue = v [ 0, 6, 0, 2 ] }
            , { mapKey = "integer-gmp", mapValue = v [ 1, 0, 0, 0 ] }
            , { mapKey = "pretty", mapValue = v [ 1, 1, 2, 0 ] }
            , { mapKey = "process", mapValue = v [ 1, 2, 3, 0 ] }
            , { mapKey = "template-haskell", mapValue = v [ 2, 10, 0, 0 ] }
            , { mapKey = "terminfo", mapValue = v [ 0, 4, 0, 1 ] }
            , { mapKey = "time", mapValue = v [ 1, 5, 0, 1 ] }
            , { mapKey = "transformers", mapValue = v [ 0, 4, 2, 0 ] }
            , { mapKey = "unix", mapValue = v [ 2, 7, 1, 0 ] }
            , { mapKey = "Win32", mapValue = v [ 2, 3, 1, 0 ] }
            , { mapKey = "xhtml", mapValue = v [ 3000, 2, 1 ] }
            ]
          }

let v8-0-1 =
      let version = v [ 8, 0, 1 ]

      in  { version
          , libraries =
            [ { mapKey = "array", mapValue = v [ 0, 5, 1, 1 ] }
            , { mapKey = "base", mapValue = v [ 4, 9, 0, 0 ] }
            , { mapKey = "binary", mapValue = v [ 0, 8, 3, 0 ] }
            , { mapKey = "bytestring", mapValue = v [ 0, 10, 8, 0 ] }
            , { mapKey = "Cabal", mapValue = v [ 1, 24, 0 ] }
            , { mapKey = "containers", mapValue = v [ 0, 5, 7, 1 ] }
            , { mapKey = "deepseq", mapValue = v [ 1, 4, 2, 0 ] }
            , { mapKey = "directory", mapValue = v [ 1, 2, 6, 2 ] }
            , { mapKey = "filepath", mapValue = v [ 1, 4, 1, 0 ] }
            , { mapKey = "ghc", mapValue = version }
            , { mapKey = "ghc-boot", mapValue = version }
            , { mapKey = "ghc-boot-th", mapValue = version }
            , { mapKey = "ghc-prim", mapValue = v [ 0, 5, 0, 0 ] }
            , { mapKey = "hoopl", mapValue = v [ 3, 10, 2, 1 ] }
            , { mapKey = "hpc", mapValue = v [ 0, 6, 0, 3 ] }
            , { mapKey = "integer-gmp", mapValue = v [ 1, 0, 0, 1 ] }
            , { mapKey = "pretty", mapValue = v [ 1, 1, 2, 0 ] }
            , { mapKey = "process", mapValue = v [ 1, 4, 2, 0 ] }
            , { mapKey = "template-haskell", mapValue = v [ 2, 11, 0, 0 ] }
            , { mapKey = "time", mapValue = v [ 1, 6, 0, 1 ] }
            , { mapKey = "unix", mapValue = v [ 2, 7, 2, 0 ] }
            , { mapKey = "Win32", mapValue = v [ 2, 3, 1, 1 ] }
            , { mapKey = "xhtml", mapValue = v [ 3000, 2, 1 ] }
            ]
          }

let v8-0-2 =
      { version = v [ 8, 0, 2 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-2-1 =
      { version = v [ 8, 2, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-2-2 =
      { version = v [ 8, 2, 2 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-4-1 =
      { version = v [ 8, 4, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-4-2 =
      { version = v [ 8, 4, 2 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-4-3 =
      { version = v [ 8, 4, 3 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-4-4 =
      { version = v [ 8, 4, 4 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-6-1 =
      { version = v [ 8, 6, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-6-2 =
      { version = v [ 8, 6, 2 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-6-3 =
      { version = v [ 8, 6, 3 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-6-4 =
      { version = v [ 8, 6, 4 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-6-5 =
      { version = v [ 8, 6, 5 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-8-1 =
      { version = v [ 8, 8, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-8-2 =
      { version = v [ 8, 8, 2 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-8-3 =
      { version = v [ 8, 8, 3 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-8-4 =
      { version = v [ 8, 8, 4 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-10-1 =
      { version = v [ 8, 10, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-10-2 =
      { version = v [ 8, 10, 2 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-10-3 =
      { version = v [ 8, 10, 3 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-10-4 =
      { version = v [ 8, 10, 4 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-10-5 =
      { version = v [ 8, 10, 5 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-10-6 =
      { version = v [ 8, 10, 6 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-10-7 =
      { version = v [ 8, 10, 7 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-0-1 =
      { version = v [ 9, 0, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-0-2 =
      { version = v [ 9, 0, 2 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-2-1 =
      { version = v [ 9, 2, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-2-2 =
      { version = v [ 9, 2, 2 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-2-3 =
      { version = v [ 9, 2, 3 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-2-4 =
      { version = v [ 9, 2, 4 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-2-5 =
      { version = v [ 9, 2, 5 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-2-6 =
      { version = v [ 9, 2, 6 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-2-7 =
      { version = v [ 9, 2, 7 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-2-8 =
      { version = v [ 9, 2, 8 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-4-1 =
      { version = v [ 9, 4, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-4-2 =
      { version = v [ 9, 4, 2 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-4-3 =
      { version = v [ 9, 4, 3 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-4-4 =
      { version = v [ 9, 4, 4 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-4-5 =
      { version = v [ 9, 4, 5 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-4-6 =
      { version = v [ 9, 4, 6 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-4-7 =
      { version = v [ 9, 4, 7 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-4-8 =
      { version = v [ 9, 4, 8 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-6-1 =
      { version = v [ 9, 6, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-6-2 =
      { version = v [ 9, 6, 2 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-6-3 =
      { version = v [ 9, 6, 3 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-6-4 =
      { version = v [ 9, 6, 4 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-6-5 =
      { version = v [ 9, 6, 5 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-6-6 =
      { version = v [ 9, 6, 6 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-6-7 =
      { version = v [ 9, 6, 7 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-8-1 =
      { version = v [ 9, 8, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-8-2 =
      { version = v [ 9, 8, 2 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-8-3 =
      { version = v [ 9, 8, 3 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-8-4 =
      { version = v [ 9, 8, 4 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-10-1 =
      { version = v [ 9, 10, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-10-2 =
      let version = v [ 9, 10, 2 ]

      in  { version
          , libraries =
            [ { mapKey = "ghc", mapValue = version }
            , { mapKey = "Cabal-syntax", mapValue = v [ 3, 12, 1, 0 ] }
            , { mapKey = "Cabal", mapValue = v [ 3, 12, 1, 0 ] }
            , { mapKey = "Win32", mapValue = v [ 2, 14, 1, 0 ] }
            , { mapKey = "array", mapValue = v [ 0, 5, 8, 0 ] }
            , { mapKey = "base", mapValue = v [ 4, 20, 1, 0 ] }
            , { mapKey = "binary", mapValue = v [ 0, 8, 9, 3 ] }
            , { mapKey = "bytestring", mapValue = v [ 0, 12, 2, 0 ] }
            , { mapKey = "containers", mapValue = v [ 0, 7 ] }
            , { mapKey = "deepseq", mapValue = v [ 1, 5, 0, 0 ] }
            , { mapKey = "directory", mapValue = v [ 1, 3, 8, 5 ] }
            , { mapKey = "exceptions", mapValue = v [ 0, 10, 9 ] }
            , { mapKey = "filepath", mapValue = v [ 1, 5, 4, 0 ] }
            , { mapKey = "ghc-boot-th", mapValue = version }
            , { mapKey = "ghc-boot", mapValue = version }
            , { mapKey = "ghc-compact", mapValue = v [ 0, 1, 0, 0 ] }
            , { mapKey = "ghc-heap", mapValue = version }
            , { mapKey = "ghc-prim", mapValue = v [ 0, 12, 0 ] }
            , { mapKey = "ghci", mapValue = version }
            , { mapKey = "haskeline", mapValue = v [ 0, 8, 2, 1 ] }
            , { mapKey = "hpc", mapValue = v [ 0, 7, 0, 2 ] }
            , { mapKey = "integer-gmp", mapValue = v [ 1, 1 ] }
            , { mapKey = "mtl", mapValue = v [ 2, 3, 1 ] }
            , { mapKey = "parsec", mapValue = v [ 3, 1, 18, 0 ] }
            , { mapKey = "pretty", mapValue = v [ 1, 1, 3, 6 ] }
            , { mapKey = "process", mapValue = v [ 1, 6, 25, 0 ] }
            , { mapKey = "stm", mapValue = v [ 2, 5, 3, 1 ] }
            , { mapKey = "template-haskell", mapValue = v [ 2, 22, 0, 0 ] }
            , { mapKey = "terminfo", mapValue = v [ 0, 4, 1, 7 ] }
            , { mapKey = "text", mapValue = v [ 2, 1, 2 ] }
            , { mapKey = "time", mapValue = v [ 1, 12, 2 ] }
            , { mapKey = "transformers", mapValue = v [ 0, 6, 1, 1 ] }
            , { mapKey = "unix", mapValue = v [ 2, 8, 6, 0 ] }
            , { mapKey = "xhtml", mapValue = v [ 3000, 2, 2, 1 ] }
            ]
          }

let v9-12-1 =
      let version = v [ 9, 12, 1 ]

      in  { version
          , libraries =
            [ { mapKey = "ghc", mapValue = version }
            , { mapKey = "Cabal-syntax", mapValue = v [ 3, 14, 1, 0 ] }
            , { mapKey = "Cabal", mapValue = v [ 3, 14, 1, 0 ] }
            , { mapKey = "Win32", mapValue = v [ 2, 14, 1, 0 ] }
            , { mapKey = "array", mapValue = v [ 0, 5, 8, 0 ] }
            , { mapKey = "base", mapValue = v [ 4, 21, 0, 0 ] }
            , { mapKey = "binary", mapValue = v [ 0, 8, 9, 2 ] }
            , { mapKey = "bytestring", mapValue = v [ 0, 12, 2, 0 ] }
            , { mapKey = "containers", mapValue = v [ 0, 7 ] }
            , { mapKey = "deepseq", mapValue = v [ 1, 5, 1, 0 ] }
            , { mapKey = "directory", mapValue = v [ 1, 3, 9, 0 ] }
            , { mapKey = "exceptions", mapValue = v [ 0, 10, 9 ] }
            , { mapKey = "file-io", mapValue = v [ 0, 1, 5 ] }
            , { mapKey = "filepath", mapValue = v [ 1, 5, 4, 0 ] }
            , { mapKey = "ghc-boot-th", mapValue = version }
            , { mapKey = "ghc-boot", mapValue = version }
            , { mapKey = "ghc-compact", mapValue = v [ 0, 1, 0, 0 ] }
            , { mapKey = "ghc-experimental", mapValue = v [ 9, 1201, 0 ] }
            , { mapKey = "ghc-heap", mapValue = version }
            , { mapKey = "ghc-internal", mapValue = v [ 9, 1201, 0 ] }
            , { mapKey = "ghc-platform", mapValue = v [ 0, 1, 0, 0 ] }
            , { mapKey = "ghc-prim", mapValue = v [ 0, 13, 0 ] }
            , { mapKey = "ghci", mapValue = version }
            , { mapKey = "haskeline", mapValue = v [ 0, 8, 2, 1 ] }
            , { mapKey = "hpc", mapValue = v [ 0, 7, 0, 1 ] }
            , { mapKey = "integer-gmp", mapValue = v [ 1, 1 ] }
            , { mapKey = "mtl", mapValue = v [ 2, 3, 1 ] }
            , { mapKey = "os-string", mapValue = v [ 2, 0, 7 ] }
            , { mapKey = "parsec", mapValue = v [ 3, 1, 17, 0 ] }
            , { mapKey = "pretty", mapValue = v [ 1, 1, 3, 6 ] }
            , { mapKey = "process", mapValue = v [ 1, 6, 25, 0 ] }
            , { mapKey = "semaphore-compat", mapValue = v [ 1, 0, 0 ] }
            , { mapKey = "stm", mapValue = v [ 2, 5, 3, 1 ] }
            , { mapKey = "template-haskell", mapValue = v [ 2, 23, 0, 0 ] }
            , { mapKey = "terminfo", mapValue = v [ 0, 4, 1, 6 ] }
            , { mapKey = "text", mapValue = v [ 2, 1, 2 ] }
            , { mapKey = "time", mapValue = v [ 1, 14 ] }
            , { mapKey = "transformers", mapValue = v [ 0, 6, 1, 2 ] }
            , { mapKey = "unix", mapValue = v [ 2, 8, 6, 0 ] }
            , { mapKey = "xhtml", mapValue = v [ 3000, 2, 2, 1 ] }
            , { mapKey = "haddock-api", mapValue = v [ 2, 30, 0 ] }
            , { mapKey = "haddock-library", mapValue = v [ 1, 11, 0 ] }
            ]
          }

let v9-12-2 =
      let version = v [ 9, 12, 2 ]

      in  { version
          , libraries =
            [ { mapKey = "ghc", mapValue = version }
            , { mapKey = "Cabal-syntax", mapValue = v [ 3, 14, 1, 0 ] }
            , { mapKey = "Cabal", mapValue = v [ 3, 14, 1, 0 ] }
            , { mapKey = "Win32", mapValue = v [ 2, 14, 1, 0 ] }
            , { mapKey = "array", mapValue = v [ 0, 5, 8, 0 ] }
            , { mapKey = "base", mapValue = v [ 4, 21, 0, 0 ] }
            , { mapKey = "binary", mapValue = v [ 0, 8, 9, 3 ] }
            , { mapKey = "bytestring", mapValue = v [ 0, 12, 2, 0 ] }
            , { mapKey = "containers", mapValue = v [ 0, 7 ] }
            , { mapKey = "deepseq", mapValue = v [ 1, 5, 1, 0 ] }
            , { mapKey = "directory", mapValue = v [ 1, 3, 9, 0 ] }
            , { mapKey = "exceptions", mapValue = v [ 0, 10, 9 ] }
            , { mapKey = "file-io", mapValue = v [ 0, 1, 5 ] }
            , { mapKey = "filepath", mapValue = v [ 1, 5, 4, 0 ] }
            , { mapKey = "ghc-boot-th", mapValue = version }
            , { mapKey = "ghc-boot", mapValue = version }
            , { mapKey = "ghc-compact", mapValue = v [ 0, 1, 0, 0 ] }
            , { mapKey = "ghc-experimental", mapValue = v [ 9, 1202, 0 ] }
            , { mapKey = "ghc-heap", mapValue = version }
            , { mapKey = "ghc-internal", mapValue = v [ 9, 1202, 0 ] }
            , { mapKey = "ghc-platform", mapValue = v [ 0, 1, 0, 0 ] }
            , { mapKey = "ghc-prim", mapValue = v [ 0, 13, 0 ] }
            , { mapKey = "ghci", mapValue = version }
            , { mapKey = "haskeline", mapValue = v [ 0, 8, 2, 1 ] }
            , { mapKey = "hpc", mapValue = v [ 0, 7, 0, 2 ] }
            , { mapKey = "integer-gmp", mapValue = v [ 1, 1 ] }
            , { mapKey = "mtl", mapValue = v [ 2, 3, 1 ] }
            , { mapKey = "os-string", mapValue = v [ 2, 0, 7 ] }
            , { mapKey = "parsec", mapValue = v [ 3, 1, 18, 0 ] }
            , { mapKey = "pretty", mapValue = v [ 1, 1, 3, 6 ] }
            , { mapKey = "process", mapValue = v [ 1, 6, 25, 0 ] }
            , { mapKey = "semaphore-compat", mapValue = v [ 1, 0, 0 ] }
            , { mapKey = "stm", mapValue = v [ 2, 5, 3, 1 ] }
            , { mapKey = "template-haskell", mapValue = v [ 2, 23, 0, 0 ] }
            , { mapKey = "terminfo", mapValue = v [ 0, 4, 1, 7 ] }
            , { mapKey = "text", mapValue = v [ 2, 1, 2 ] }
            , { mapKey = "time", mapValue = v [ 1, 14 ] }
            , { mapKey = "transformers", mapValue = v [ 0, 6, 1, 2 ] }
            , { mapKey = "unix", mapValue = v [ 2, 8, 6, 0 ] }
            , { mapKey = "xhtml", mapValue = v [ 3000, 2, 2, 1 ] }
            , { mapKey = "haddock-api", mapValue = v [ 2, 30, 0 ] }
            , { mapKey = "haddock-library", mapValue = v [ 1, 11, 0 ] }
            ]
          }

in  { Type = ./Type
    , v7-10-1
    , v7-10-2
    , v7-10-3
    , v7-10 = v7-10-3
    , v8-0-1
    , v8-0-2
    , v8-0 = v8-0-2
    , v8-2-1
    , v8-2-2
    , v8-2 = v8-2-2
    , v8-4-1
    , v8-4-2
    , v8-4-3
    , v8-4-4
    , v8-4 = v8-4-4
    , v8-6-1
    , v8-6-2
    , v8-6-3
    , v8-6-4
    , v8-6-5
    , v8-6 = v8-6-5
    , v8-8-1
    , v8-8-2
    , v8-8-3
    , v8-8-4
    , v8-8 = v8-8-4
    , v8-10-1
    , v8-10-2
    , v8-10-3
    , v8-10-4
    , v8-10-5
    , v8-10-6
    , v8-10-7
    , v8-10 = v8-10-7
    , v9-0-1
    , v9-0-2
    , v9-0 = v9-0-2
    , v9-2-1
    , v9-2-2
    , v9-2-3
    , v9-2-4
    , v9-2-5
    , v9-2-6
    , v9-2-7
    , v9-2-8
    , v9-2 = v9-2-8
    , v9-4-1
    , v9-4-2
    , v9-4-3
    , v9-4-4
    , v9-4-5
    , v9-4-6
    , v9-4-7
    , v9-4-8
    , v9-4 = v9-4-8
    , v9-6-1
    , v9-6-2
    , v9-6-3
    , v9-6-4
    , v9-6-5
    , v9-6-6
    , v9-6-7
    , v9-6 = v9-6-7
    , v9-8-1
    , v9-8-2
    , v9-8-3
    , v9-8-4
    , v9-8 = v9-8-4
    , v9-10-1
    , v9-10-2
    , v9-10 = v9-10-2
    , v9-12-1
    , v9-12-2
    , v9-12 = v9-12-2
    }
