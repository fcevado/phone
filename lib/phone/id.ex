defmodule Phone.ID do
  use Helper.Country, match: :regex
  field :regex, ~r/^(62)()(.+)/
  field :country, "Indonesia"
  field :a2, "ID"
  field :a3, "IDN"
end
