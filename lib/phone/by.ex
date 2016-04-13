defmodule Phone.BY do
  use Helper.Country
  field :regex, ~r/^(375)()(.{9})/
  field :country, "Belarus"
  field :a2, "BY"
  field :a3, "BLR"
  match :regex
end
