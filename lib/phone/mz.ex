defmodule Phone.MZ do
  use Helper.Country, match: :regex
  field :regex, ~r/^(258)()(.+)/
  field :country, "Mozambique"
  field :a2, "MZ"
  field :a3, "MOZ"
end
