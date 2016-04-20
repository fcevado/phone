defmodule Phone.PG do
  use Helper.Country
  field :regex, ~r/^(675)()(.+)/
  field :country, "Papua New Guinea"
  field :a2, "PG"
  field :a3, "PNG"
  match :regex
end
