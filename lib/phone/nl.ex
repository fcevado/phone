defmodule Phone.NL do
  use Helper.Country, match: :regex,
    number_prefix: "31"
  field :regex, ~r/^(31)()(.{9})/
  field :country, "Netherlands"
  field :a2, "NL"
  field :a3, "NLD"
end
