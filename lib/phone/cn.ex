defmodule Phone.CN do
  use Helper.Country
  field :regex, ~r/^(86)()(.+)/
  field :country, "China"
  field :a2, "CN"
  field :a3, "CHN"
  match :regex
end
