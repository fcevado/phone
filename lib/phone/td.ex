defmodule Phone.TD do
  use Helper.Country
  field :regex, ~r/^(235)()(.{8})/
  field :country, "Chad"
  field :a2, "TD"
  field :a3, "TCD"
  match :regex
end
