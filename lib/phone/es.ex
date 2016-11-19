defmodule Phone.ES do
  use Helper.Country, match: :regex,
    number_prefix: "34"
  field :regex, ~r/^(34)()(.{9})/
  field :country, "Spain"
  field :a2, "ES"
  field :a3, "ESP"
end
