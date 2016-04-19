defmodule Phone.NI do
  use Helper.Country
  field :regex, ~r/^(505)()(.{8})/
  field :country, "Nicaragua"
  field :a2, "NI"
  field :a3, "NIC"
  match :regex
end
