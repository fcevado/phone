defmodule Phone.SA do
  use Helper.Country
  field :regex, ~r/^(966)()(.+)/
  field :country, "Saudi Arabia"
  field :a2, "SA"
  field :a3, "SAU"
  match :regex
end
