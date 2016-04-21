defmodule Phone.SV do
  use Helper.Country
  field :regex, ~r/^(503)()(.{7,8})/
  field :country, "El Salvador"
  field :a2, "SV"
  field :a3, "SLV"
  match :regex
end
