let package = { Type = ./Type, default = ./default }

let testMinimalRequiredFieldsForSchema =
      assert : package::{ name = "base" } ≡ package.default ∧ { name = "base" }

in  package
