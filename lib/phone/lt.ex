defmodule Phone.LT do
  use Helper.Country, match: :regex,
    number_prefix: "370"
  field :regex, ~r/^(370)()(.{8})/
  field :country, "Lithuania"
  field :a2, "LT"
  field :a3, "LTU"
end
