defmodule Phone.NU do
  use Helper.Country, match: :regex
  field :regex, ~r/^(683)()(.{4})/
  field :country, "Niue"
  field :a2, "NU"
  field :a3, "NIU"
end
