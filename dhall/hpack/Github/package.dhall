let package = { Type = ./Type, default = ./default, show = ./show }

let testMinimalRequiredFieldsForSchema =
      package::{ owner = "sellout", repo = "hall" }

in  package
