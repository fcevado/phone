defmodule Phone.LU do
  use Helper.Country, match: :regex
  field :regex, ~r/^(352)()(.+)/
  field :country, "Luxembourg"
  field :a2, "LU"
  field :a3, "LUX"
end
