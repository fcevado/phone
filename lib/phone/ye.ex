defmodule Phone.YE do
  use Helper.Country
  field :regex, ~r/^(967)()(.+)/
  field :country, "Yemen"
  field :a2, "YE"
  field :a3, "YEM"
  match :regex
end
