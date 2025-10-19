{-| A bunch of types and schemas for working with hpack-dhall.

These types are necessarily more restrictive than what hpack-dhall itself
allows. For example, hpack-dhall allows named sections to be defined as either a
record or a `Map`, but using a record will have different types for each package
defined that way. These schemas require that such things are defined as `Map`s
so that the type is consistent no matter what the package contains.

The one exception to this is handling the recursion that occurs through
conditionals. Various types here have either a `Type` or `(Type -> Type) ->
Type` parameter, which allows one to specify how recursion is handled. I
recommend manually unrolling only as deep as you require to allow however many
levels of nested conditionals you have. Using actual fixed-points like those in
Dada will likely not produce a structure that’s compatible with hpack-dhall.

Many of these have a similar structure:
- `DefaultType` – the type of `default` values from the schema
- `Type` – the type of the structure
- `combine` – how to combine two values of the structure
- `default` – the default value for the schema
- `schema` – a schema to use with `::`

## references

- [Cabal package description](https://cabal.readthedocs.io/en/stable/cabal-package-description-file.html)
- [hpack documentation](https://github.com/sol/hpack#documentation)
-}
{ Benchmark = ./Benchmark/package.dhall
, BuildType = ./BuildType/package.dhall
, Combine = ./Combine/package.dhall
, Common = ./Common/package.dhall
, Conditional = ./Conditional/package.dhall
, CustomSetup = ./CustomSetup/package.dhall
, Default = ./Default/package.dhall
, Dependency = ./Dependency/package.dhall
, Dependencies = ./Dependencies/package.dhall
, Executable = ./Executable/package.dhall
, Flag = ./Flag/package.dhall
, Github = ./Github/package.dhall
, Library = ./Library/package.dhall
, Package = ./Package/package.dhall
, Sublibrary = ./Sublibrary/package.dhall
, Test = ./Test/package.dhall
, Verbatim = ./Verbatim/package.dhall
, Visibility = ./Visibility/package.dhall
}
