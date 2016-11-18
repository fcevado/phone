defmodule Phone.MM do
  use Helper.Country, match: :regex
  field :regex, ~r/^(95)()(.{7,10})/
  field :country, "Myanmar"
  field :a2, "MM"
  field :a3, "MMR"
end
