defmodule Phone.KP do
  use Helper.Country, match: :regex
  field :regex, ~r/^(850)()(.+)/
  field :country, "North Korea"
  field :a2, "KP"
  field :a3, "PRK"
end
