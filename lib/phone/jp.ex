defmodule Phone.JP do
  use Helper.Country
  field :regex, ~r/^(81)()(.+)/
  field :country, "Japan"
  field :a2, "JP"
  field :a3, "JPN"
  match :regex
end
