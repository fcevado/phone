defmodule Phone.NL do
  use Helper.Country, match: :regex
  field :regex, ~r/^(31)()(.{9})/
  field :country, "Netherlands"
  field :a2, "NL"
  field :a3, "NLD"
end
