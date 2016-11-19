defmodule Phone.RO do
  use Helper.Country, match: :regex,
    number_prefix: "40"
  field :regex, ~r/^(40)()(.{9})/
  field :country, "Romania"
  field :a2, "RO"
  field :a3, "ROU"
end
