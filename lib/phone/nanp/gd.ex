defmodule Phone.NANP.GD do
  use Helper.Country
  field :regex, ~r/^(1)(473)([2-9].{6})/
  field :country, "Grenada"
  field :a2, "GD"
  field :a3, "GRD"
  match :regex
end
