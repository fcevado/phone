defmodule Phone.NO do
  use Helper.Country
  field :regex, ~r/^(47)()([2-9].{7}|0.{3})/
  field :country, "Norway"
  field :a2, "NO"
  field :a3, "NOR"
  match :regex
end
