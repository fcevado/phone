defmodule Phone.AU do
  use Helper.Country, match: :regex,
    number_prefix: "61"
  field :regex, ~r/^(61)([1-478])(.{8})/
  field :country, "Australia"
  field :a2, "AU"
  field :a3, "AUS"
end
