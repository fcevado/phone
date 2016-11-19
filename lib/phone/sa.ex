defmodule Phone.SA do
  use Helper.Country, match: :regex,
    number_prefix: "966"
  field :regex, ~r/^(966)()(.+)/
  field :country, "Saudi Arabia"
  field :a2, "SA"
  field :a3, "SAU"
end
