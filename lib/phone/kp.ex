defmodule Phone.KP do
  use Helper.Country
  field :regex, ~r/^(850)()(.+)/
  field :country, "North Korea"
  field :a2, "KP"
  field :a3, "PRK"
  match :regex
end
