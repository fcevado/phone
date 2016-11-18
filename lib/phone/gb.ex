defmodule Phone.GB do
  use Helper.Country, match: :regex
  field :regex, ~r/^(44)()(.{10})/
  field :country, "United Kingdom"
  field :a2, "GB"
  field :a3, "GBR"
end
