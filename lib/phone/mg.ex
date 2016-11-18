defmodule Phone.MG do
  use Helper.Country, match: :regex
  field :regex, ~r/^(261)()(.+)/
  field :country, "Madagascar"
  field :a2, "MG"
  field :a3, "MDG"
end
