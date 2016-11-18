defmodule Phone.BO do
  use Helper.Country, match: :regex
  field :regex, ~r/^(591)()(.{8})/
  field :country, "Bolivia"
  field :a2, "BO"
  field :a3, "BOL"
end
