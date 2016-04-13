defmodule Phone.BE do
  use Helper.Country
  field :regex, ~r/^(32)()(.{9})/
  field :country, "Belgium"
  field :a2, "BE"
  field :a3, "BEL"
  match :regex
end
