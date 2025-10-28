let package =
      { DefaultType = ./DefaultType, Type = ./Type, default = ./default }

let testMinimalRequiredFieldsForSchema =
      package::{ default = True, manual = True }

in  package
