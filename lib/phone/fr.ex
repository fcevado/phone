defmodule Phone.FR do
  use Helper.Country, match: :regex,
    number_prefix: "33"
  field :regex, ~r/^(33)()(.{9})/
  field :country, "France"
  field :a2, "FR"
  field :a3, "FRA"
end
