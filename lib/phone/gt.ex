defmodule Phone.GT do
  use Helper.Country, match: :regex,
    number_prefix: "502"
  field :regex, ~r/^(502)()(.{8})/
  field :country, "Guatemala"
  field :a2, "GT"
  field :a3, "GTM"
end
