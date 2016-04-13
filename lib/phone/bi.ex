defmodule Phone.BI do
  use Helper.Country
  field :regex, ~r/^(257)()(.{8})/
  field :country, "Burundi"
  field :a2, "BI"
  field :a3, "BDI"
  match :regex
end
