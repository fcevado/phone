defmodule Phone.GQ do
  use Helper.Country, match: :regex,
    number_prefix: "240"
  field :regex, ~r/^(240)()(.{9})/
  field :country, "Equatorial Guinea"
  field :a2, "GQ"
  field :a3, "GNQ"
end
