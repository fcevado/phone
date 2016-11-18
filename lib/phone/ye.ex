defmodule Phone.YE do
  use Helper.Country, match: :regex
  field :regex, ~r/^(967)()(.+)/
  field :country, "Yemen"
  field :a2, "YE"
  field :a3, "YEM"
end
