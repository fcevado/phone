defmodule Phone.RO do
  use Helper.Country
  field :regex, ~r/^(40)()(.{9})/
  field :country, "Romania"
  field :a2, "RO"
  field :a3, "ROU"
  match :regex
end
