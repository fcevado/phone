defmodule Phone.BO do
  use Helper.Country
  field :regex, ~r/^(591)()(.{8})/
  field :country, "Bolivia"
  field :a2, "BO"
  field :a3, "BOL"
  match :regex
end
