defmodule Phone.KP do
  use Helper.Country, match: :regex,
    number_prefix: "850"
  field :regex, ~r/^(850)()(.+)/
  field :country, "North Korea"
  field :a2, "KP"
  field :a3, "PRK"
end
