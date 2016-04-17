defmodule Phone.GY do
  use Helper.Country
  field :regex, ~r/^(592)()(.{8})/
  field :country, "Guyana"
  field :a2, "GY"
  field :a3, "GUY"
  match :regex
end
