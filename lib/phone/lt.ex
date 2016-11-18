defmodule Phone.LT do
  use Helper.Country, match: :regex
  field :regex, ~r/^(370)()(.{8})/
  field :country, "Lithuania"
  field :a2, "LT"
  field :a3, "LTU"
end
