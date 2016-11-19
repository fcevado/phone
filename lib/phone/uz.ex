defmodule Phone.UZ do
  use Helper.Country, match: :regex,
    number_prefix: "998"
  field :regex, ~r/^(998)()(.{9})/
  field :country, "Uzbekistan"
  field :a2, "UZ"
  field :a3, "UZB"
end
