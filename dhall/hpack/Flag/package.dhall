let package =
      { DefaultType = ./DefaultType, Type = ./Type, default = ./default }

let testMinimalRequiredFieldsForSchema =
        assert
      :   package::{ default = True, manual = True }
        ≡ package.default ∧ { default = True, manual = True }

in  package
