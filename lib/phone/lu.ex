defmodule Phone.LU do
  use Helper.Country
  field :regex, ~r/^(352)()(.+)/
  field :country, "Luxembourg"
  field :a2, "LU"
  field :a3, "LUX"
  match :regex
end
