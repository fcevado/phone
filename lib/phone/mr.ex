defmodule Phone.MR do
  use Helper.Country, match: :regex
  field :regex, ~r/^(222)()(.{8})/
  field :country, "Mauritania"
  field :a2, "MR"
  field :a3, "MRT"
end
