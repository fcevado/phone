defmodule Phone.AF do
  use Helper.Country, match: :regex
  field :regex, ~r/^(93)(..)(.{7})/
  field :country, "Afghanistan"
  field :a2, "AF"
  field :a3, "AFG"
end
