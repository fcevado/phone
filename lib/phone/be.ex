defmodule Phone.BE do
  use Helper.Country, match: :regex,
    number_prefix: "32"
  field :regex, ~r/^(32)()(.{9})/
  field :country, "Belgium"
  field :a2, "BE"
  field :a3, "BEL"
end
