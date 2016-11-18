defmodule Phone.BA do
  use Helper.Country, match: :regex
  field :regex, ~r/^(387)(..)(.{5,6})/
  field :country, "Bosnia and Herzegovina"
  field :a2, "BA"
  field :a3, "BIH"
end
