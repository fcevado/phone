defmodule Phone.RO do
  use Helper.Country, match: :regex
  field :regex, ~r/^(40)()(.{9})/
  field :country, "Romania"
  field :a2, "RO"
  field :a3, "ROU"
end
