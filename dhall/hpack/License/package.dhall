{-| A `dhall-to-json`-compatible version of SPDX license expressions.

This contains as much structure as is possible to permit dhall-to-json to
convert it into a valid SPDX license expression, with functions to avoid having
to write non-atomic strings.

## references

- [SPDX license expression syntax](https://spdx.github.io/spdx-spec/v3.0.1/annexes/spdx-license-expressions/)
- [SPDX license identifiers](https://spdx.org/licenses/index.html)
- [SPDX license exception identifiers](https://spdx.org/licenses/exceptions-index.html)
-}
let License = ./Type

let licenseRef = ./licenseRef

let or = ./or

let `with` = ./with

let checkMyStandardLicense =
        assert
      :   or
            [ `with` "AGPL-3.0-only" "Universal-FOSS-exception-1.0"
            , Some (License.Expression (licenseRef (None Text) "commercial"))
            ]
        ≡ Some
            ( License.Expression
                "AGPL-3.0-only WITH Universal-FOSS-exception-1.0 OR LicenseRef-commercial"
            )

in  { Type = License
    , additionRef = ./additionRef
    , and = ./and
    , both = ./both
    , either = ./either
    , licenseRef
    , or
    , `with`
    }
