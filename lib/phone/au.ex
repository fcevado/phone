defmodule Phone.AU do
  use Helper.Country, match: :regex
  field :regex, ~r/^(61)([1-478])(.{8})/
  field :country, "Australia"
  field :a2, "AU"
  field :a3, "AUS"
end
