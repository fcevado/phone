defmodule Phone.GY do
  use Helper.Country, match: :regex
  field :regex, ~r/^(592)()(.{8})/
  field :country, "Guyana"
  field :a2, "GY"
  field :a3, "GUY"
end
