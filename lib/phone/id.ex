defmodule Phone.ID do
  use Helper.Country, match: :regex,
    number_prefix: "62"
  field :regex, ~r/^(62)()(.+)/
  field :country, "Indonesia"
  field :a2, "ID"
  field :a3, "IDN"
end
