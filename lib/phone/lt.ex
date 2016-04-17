defmodule Phone.LT do
  use Helper.Country
  field :regex, ~r/^(370)()(.{8})/
  field :country, "Lithuania"
  field :a2, "LT"
  field :a3, "LTU"
  match :regex
end
