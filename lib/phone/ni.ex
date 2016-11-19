defmodule Phone.NI do
  use Helper.Country, match: :regex,
    number_prefix: "505"
  field :regex, ~r/^(505)()(.{8})/
  field :country, "Nicaragua"
  field :a2, "NI"
  field :a3, "NIC"
end
