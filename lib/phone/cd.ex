defmodule Phone.CD do
  use Helper.Country, match: :regex
  field :regex, ~r/^(243)(.)(.{7})/
  field :country, "Democratic Republic of Congo"
  field :a2, "CD"
  field :a3, "COD"
end
