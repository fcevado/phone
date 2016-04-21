defmodule Phone.UZ do
  use Helper.Country
  field :regex, ~r/^(998)()(.{9})/
  field :country, "Uzbekistan"
  field :a2, "UZ"
  field :a3, "UZB"
  match :regex
end
