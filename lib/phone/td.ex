defmodule Phone.TD do
  use Helper.Country, match: :regex
  field :regex, ~r/^(235)()(.{8})/
  field :country, "Chad"
  field :a2, "TD"
  field :a3, "TCD"
end
