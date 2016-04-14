defmodule Phone.CU do
  use Helper.Country
  field :regex, ~r/^(53)()(.{8})/
  field :country, "Cuba"
  field :a2, "CU"
  field :a3, "CUB"
  match :regex
end
