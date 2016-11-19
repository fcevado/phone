defmodule Phone.BI do
  use Helper.Country, match: :regex,
    number_prefix: "257"
  field :regex, ~r/^(257)()(.{8})/
  field :country, "Burundi"
  field :a2, "BI"
  field :a3, "BDI"
end
