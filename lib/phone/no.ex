defmodule Phone.NO do
  use Helper.Country, match: :regex,
    number_prefix: "47"
  field :regex, ~r/^(47)()([2-8].{7}|0.{3})/
  field :country, "Norway"
  field :a2, "NO"
  field :a3, "NOR"
end
