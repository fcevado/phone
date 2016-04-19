defmodule Phone.NC do
  use Helper.Country
  field :regex, ~r/^(687)()(.{6})/
  field :country, "New Caledonia"
  field :a2, "NC"
  field :a3, "NCL"
  match :regex
end
