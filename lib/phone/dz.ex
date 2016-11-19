defmodule Phone.DZ do
  use Helper.Country, match: :regex,
    number_prefix: "213"
  field :regex, ~r/^(213)()(.{8})/
  field :country, "Algeria"
  field :a2, "DZ"
  field :a3, "DZA"
end
