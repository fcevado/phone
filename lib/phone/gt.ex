defmodule Phone.GT do
  use Helper.Country
  field :regex, ~r/^(502)()(.{8})/
  field :country, "Guatemala"
  field :a2, "GT"
  field :a3, "GTM"
  match :regex
end
