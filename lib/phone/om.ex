defmodule Phone.OM do
  use Helper.Country, match: :regex,
    number_prefix: "968"
  field :regex, ~r/^(968)()(.{8})/
  field :country, "Oman"
  field :a2, "OM"
  field :a3, "OMN"
end
