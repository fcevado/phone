defmodule Phone.CN do
  use Helper.Country, match: :regex,
    number_prefix: "86"
  field :regex, ~r/^(86)()(.+)/
  field :country, "China"
  field :a2, "CN"
  field :a3, "CHN"
end
