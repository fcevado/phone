defmodule Phone.CZ do
  use Helper.Country
  field :regex, ~r/^(420)()(.{9})/
  field :country, "Czech Republic"
  field :a2, "CZ"
  field :a3, "CZE"
  match :regex
end
