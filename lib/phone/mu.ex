defmodule Phone.MU do
  use Helper.Country, match: :regex,
    number_prefix: "230"
  field :regex, ~r/^(230)()(.{8})/
  field :country, "Mauritius"
  field :a2, "MU"
  field :a3, "MUS"
end
