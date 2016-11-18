defmodule Phone.MD do
  use Helper.Country, match: :regex
  field :regex, ~r/^(373)()(.{8})/
  field :country, "Moldova"
  field :a2, "MD"
  field :a3, "MDA"
end
