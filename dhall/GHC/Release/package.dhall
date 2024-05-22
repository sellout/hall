{-|
-}
let P =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v20.1.0/Prelude/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let PVP = ../../PVP/package.dhall

let v = PVP.v

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

let v8-6-1 =
      { version = v [ 8, 6, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-8-1 =
      { version = v [ 8, 8, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-8-4 =
      { version = v [ 8, 8, 4 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-10-1 =
      { version = v [ 8, 10, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v8-10-7 =
      { version = v [ 8, 10, 7 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-0-1 =
      { version = v [ 9, 0, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-0-2 =
      { version = v [ 9, 0, 2 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-2-1 =
      { version = v [ 9, 2, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-2-8 =
      { version = v [ 9, 2, 8 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-4-1 =
      { version = v [ 9, 4, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-4-8 =
      { version = v [ 9, 4, 8 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-6-1 =
      { version = v [ 9, 6, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-6-2 =
      { version = v [ 9, 6, 2 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-8-1 =
      { version = v [ 9, 8, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

let v9-10-1 =
      { version = v [ 9, 10, 1 ], libraries = [] : P.Map.Type Text PVP.Version }

in  { Type = ./Type
    , v7-10-3
    , v8-0-1
    , v8-0-2
    , v8-2-1
    , v8-2-2
    , v8-4-1
    , v8-6-1
    , v8-8-1
    , v8-8-4
    , v8-10-1
    , v8-10-7
    , v8-10 = v8-10-7
    , v9-0-1
    , v9-0-2
    , v9-2-1
    , v9-2-8
    , v9-4-1
    , v9-4-8
    , v9-6-1
    , v9-6-2
    , v9-8-1
    , v9-10-1
    , v9-10 = v9-10-1
    }
