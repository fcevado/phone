defmodule Phone.CI do
  use Helper.Country
  field :regex, ~r/^(225)(..)(.{6})/
  field :country, "Ivory Coast"
  field :a2, "CI"
  field :a3, "CIV"
  match :regex
end
