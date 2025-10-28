let package = { Type = ./Type, default = ./default }

let testMinimalRequiredFieldsForSchema = package::{ name = "base" }

in  package
