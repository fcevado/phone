defmodule Phone.LU do
  use Helper.Country, match: :regex,
    number_prefix: "352"
  field :regex, ~r/^(352)()(.+)/
  field :country, "Luxembourg"
  field :a2, "LU"
  field :a3, "LUX"
end
