defmodule Phone.CF do
  use Helper.Country
  field :regex, ~r/^(236)()(.{8})/
  field :country, "Central African Republic"
  field :a2, "CF"
  field :a3, "CAF"
  match :regex
end
