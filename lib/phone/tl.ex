defmodule Phone.TL do
  use Helper.Country, match: :regex
  field :regex, ~r/^(670)()(.{8})/
  field :country, "East Timor"
  field :a2, "TL"
  field :a3, "TLS"
end
