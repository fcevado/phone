defmodule Phone.AF do
  use Helper.Country, match: :regex,
    number_prefix: "93"
  field :regex, ~r/^(93)(..)(.{7})/
  field :country, "Afghanistan"
  field :a2, "AF"
  field :a3, "AFG"
end
