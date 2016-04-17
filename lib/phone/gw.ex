defmodule Phone.GW do
  use Helper.Country
  field :regex, ~r/^(245)()(.{7})/
  field :country, "Guinea-Bissau"
  field :a2, "GW"
  field :a3, "GNB"
  match :regex
end
