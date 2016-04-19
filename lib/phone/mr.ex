defmodule Phone.MR do
  use Helper.Country
  field :regex, ~r/^(222)()(.{8})/
  field :country, "Mauritania"
  field :a2, "MR"
  field :a3, "MRT"
  match :regex
end
