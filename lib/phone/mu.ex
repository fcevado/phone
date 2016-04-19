defmodule Phone.MU do
  use Helper.Country
  field :regex, ~r/^(230)()(.{8})/
  field :country, "Mauritius"
  field :a2, "MU"
  field :a3, "MUS"
  match :regex
end
