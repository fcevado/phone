defmodule Phone.GQ do
  use Helper.Country
  field :regex, ~r/^(240)()(.{9})/
  field :country, "Equatorial Guinea"
  field :a2, "GQ"
  field :a3, "GNQ"
  match :regex
end
