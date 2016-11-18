defmodule Phone.GH do
  use Helper.Country, match: :regex
  field :regex, ~r/^(233)(..)(.{7})/
  field :country, "Ghana"
  field :a2, "GH"
  field :a3, "GHA"
end
