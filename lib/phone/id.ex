defmodule Phone.ID do
  use Helper.Country
  field :regex, ~r/^(62)()(.+)/
  field :country, "Indonesia"
  field :a2, "ID"
  field :a3, "IDN"
  match :regex
end
