defmodule Phone.NANP.GU do
  use Helper.Country
  field :regex, ~r/^(1)(473)([2-9].{6})$/
  field :country, "Guam"
  field :a2, "GU"
  field :a3, "GUM"
  match :regex
end
