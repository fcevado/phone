defmodule Phone.MN do
  use Helper.Country, match: :regex,
    number_prefix: "976"
  field :regex, ~r/^(976)()(.+)/
  field :country, "Mongolia"
  field :a2, "MN"
  field :a3, "MNG"
end
