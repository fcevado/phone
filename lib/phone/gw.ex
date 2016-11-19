defmodule Phone.GW do
  use Helper.Country, match: :regex,
    number_prefix: "245"
  field :regex, ~r/^(245)()(.{7})/
  field :country, "Guinea-Bissau"
  field :a2, "GW"
  field :a3, "GNB"
end
