defmodule Phone.BA do
  use Helper.Country, match: :regex,
    number_prefix: "387"
  field :regex, ~r/^(387)(..)(.{5,6})/
  field :country, "Bosnia and Herzegovina"
  field :a2, "BA"
  field :a3, "BIH"
end
