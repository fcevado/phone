defmodule Phone.MZ do
  use Helper.Country
  field :regex, ~r/^(258)()(.+)/
  field :country, "Mozambique"
  field :a2, "MZ"
  field :a3, "MOZ"
  match :regex
end
