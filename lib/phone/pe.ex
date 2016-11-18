defmodule Phone.PE do
  use Helper.Country, match: :regex
  field :regex, ~r/^(51)()(.{8,9})/
  field :country, "Peru"
  field :a2, "PE"
  field :a3, "PER"
end
