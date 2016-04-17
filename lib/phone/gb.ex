defmodule Phone.GB do
  use Helper.Country
  field :regex, ~r/^(44)()(.{10})/
  field :country, "United Kingdom"
  field :a2, "GB"
  field :a3, "GBR"
  match :regex
end
