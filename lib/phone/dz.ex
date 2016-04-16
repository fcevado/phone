defmodule Phone.DZ do
   use Helper.Country
  field :regex, ~r/^(213)()(.{8})/
  field :country, "Algeria"
  field :a2, "DZ"
  field :a3, "DZA"
  match :regex
end
