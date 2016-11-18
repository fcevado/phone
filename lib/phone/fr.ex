defmodule Phone.FR do
  use Helper.Country, match: :regex
  field :regex, ~r/^(33)()(.{9})/
  field :country, "France"
  field :a2, "FR"
  field :a3, "FRA"
end
