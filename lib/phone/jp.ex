defmodule Phone.JP do
  use Helper.Country, match: :regex,
    number_prefix: "81"
  field :regex, ~r/^(81)()(.+)/
  field :country, "Japan"
  field :a2, "JP"
  field :a3, "JPN"
end
