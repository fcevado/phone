defmodule Phone.NR do
  use Helper.Country
  field :regex, ~r/^(674)()(.{7})/
  field :country, "Nauru"
  field :a2, "NR"
  field :a3, "NRU"
  match :regex
end
