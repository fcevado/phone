defmodule Phone.CU do
  use Helper.Country, match: :regex,
    number_prefix: "53"
  field :regex, ~r/^(53)()(.{8})/
  field :country, "Cuba"
  field :a2, "CU"
  field :a3, "CUB"
end
