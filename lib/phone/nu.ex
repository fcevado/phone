defmodule Phone.NU do
  use Helper.Country, match: :regex,
    number_prefix: "683"
  field :regex, ~r/^(683)()(.{4})/
  field :country, "Niue"
  field :a2, "NU"
  field :a3, "NIU"
end
