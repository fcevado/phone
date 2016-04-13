defmodule Phone.BH do
  use Helper.Country
  field :regex, ~r/^(973)()(.{8})/
  field :country, "Bahrain"
  field :a2, "BH"
  field :a3, "BHR"
  match :regex
end
