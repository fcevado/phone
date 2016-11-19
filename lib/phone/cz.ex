defmodule Phone.CZ do
  use Helper.Country, match: :regex,
    number_prefix: "420"
  field :regex, ~r/^(420)()(.{9})/
  field :country, "Czech Republic"
  field :a2, "CZ"
  field :a3, "CZE"
end
