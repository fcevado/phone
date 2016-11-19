defmodule Phone.YE do
  use Helper.Country, match: :regex,
    number_prefix: "967"
  field :regex, ~r/^(967)()(.+)/
  field :country, "Yemen"
  field :a2, "YE"
  field :a3, "YEM"
end
