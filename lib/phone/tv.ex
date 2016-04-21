defmodule Phone.TV do
  use Helper.Country
  field :regex, ~r/^(688)()(.{5,6})/
  field :country, "Tuvalu"
  field :a2, "TV"
  field :a3, "TUV"
  match :regex
end
