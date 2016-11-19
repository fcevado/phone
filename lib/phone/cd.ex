defmodule Phone.CD do
  use Helper.Country, match: :regex,
    number_prefix: "243"
  field :regex, ~r/^(243)(.)(.{7})/
  field :country, "Democratic Republic of Congo"
  field :a2, "CD"
  field :a3, "COD"
end
