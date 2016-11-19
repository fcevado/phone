defmodule Phone.PG do
  use Helper.Country, match: :regex,
    number_prefix: "675"
  field :regex, ~r/^(675)()(.+)/
  field :country, "Papua New Guinea"
  field :a2, "PG"
  field :a3, "PNG"
end
