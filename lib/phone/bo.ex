defmodule Phone.BO do
  use Helper.Country, match: :regex,
    number_prefix: "591"
  field :regex, ~r/^(591)()(.{8})/
  field :country, "Bolivia"
  field :a2, "BO"
  field :a3, "BOL"
end
