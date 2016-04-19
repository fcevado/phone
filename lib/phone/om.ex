defmodule Phone.OM do
  use Helper.Country
  field :regex, ~r/^(968)()(.{8})/
  field :country, "Oman"
  field :a2, "OM"
  field :a3, "OMN"
  match :regex
end
