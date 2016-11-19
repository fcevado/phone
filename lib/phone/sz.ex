defmodule Phone.SZ do
  use Helper.Country, match: :regex,
    number_prefix: "268"
  field :regex, ~r/^(268)()(.{8})/
  field :country, "Swaziland"
  field :a2, "SZ"
  field :a3, "SWZ"
end
