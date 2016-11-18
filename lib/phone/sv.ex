defmodule Phone.SV do
  use Helper.Country, match: :regex
  field :regex, ~r/^(503)()(.{7,8})/
  field :country, "El Salvador"
  field :a2, "SV"
  field :a3, "SLV"
end
