defmodule Phone.DZ do
  use Helper.Country, match: :regex
  field :regex, ~r/^(213)()(.{8})/
  field :country, "Algeria"
  field :a2, "DZ"
  field :a3, "DZA"
end
