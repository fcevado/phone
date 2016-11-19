defmodule Phone.MM do
  use Helper.Country, match: :regex,
    number_prefix: "95"
  field :regex, ~r/^(95)()(.{7,10})/
  field :country, "Myanmar"
  field :a2, "MM"
  field :a3, "MMR"
end
