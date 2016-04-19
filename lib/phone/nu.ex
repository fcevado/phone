defmodule Phone.NU do
  use Helper.Country
  field :regex, ~r/^(683)()(.{4})/
  field :country, "Niue"
  field :a2, "NU"
  field :a3, "NIU"
  match :regex
end
