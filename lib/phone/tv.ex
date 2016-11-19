defmodule Phone.TV do
  use Helper.Country, match: :regex,
    number_prefix: "688"
  field :regex, ~r/^(688)()(.{5,6})/
  field :country, "Tuvalu"
  field :a2, "TV"
  field :a3, "TUV"
end
