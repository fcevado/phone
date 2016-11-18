defmodule Phone.MU do
  use Helper.Country, match: :regex
  field :regex, ~r/^(230)()(.{8})/
  field :country, "Mauritius"
  field :a2, "MU"
  field :a3, "MUS"
end
