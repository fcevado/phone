defmodule Phone.ZA do
  use Helper.Country, match: :regex,
    number_prefix: "27"
  field :regex, ~r/^(27)()(.{10})/
  field :country, "South Africa"
  field :a2, "ZA"
  field :a3, "ZAF"
end
