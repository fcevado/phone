defmodule Phone.TD do
  use Helper.Country, match: :regex,
    number_prefix: "235"
  field :regex, ~r/^(235)()(.{8})/
  field :country, "Chad"
  field :a2, "TD"
  field :a3, "TCD"
end
