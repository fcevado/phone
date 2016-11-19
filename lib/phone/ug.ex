defmodule Phone.UG do
  use Helper.Country, match: :regex,
    number_prefix: "256"
  field :regex, ~r/^(256)()(.{8})/
  field :country, "Uganda"
  field :a2, "UG"
  field :a3, "UGA"
end
