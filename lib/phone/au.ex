defmodule Phone.AU do
  use Helper.Country
  field :regex, ~r/^(61)([1-478])(.{8})/
  field :country, "Australia"
  field :a2, "AU"
  field :a3, "AUS"
  match :regex
end
