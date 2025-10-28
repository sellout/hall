let package = { Type = ./Type, default = ./default, show = ./show }

let testMinimalRequiredFieldsForSchema =
        assert
      :   package::{ owner = "sellout", repo = "hall" }
        ≡ package.default ∧ { owner = "sellout", repo = "hall" }

in  package
