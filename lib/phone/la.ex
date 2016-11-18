defmodule Phone.LA do
  use Helper.Country, match: :regex
  field :regex, ~r/^(856)(..)(.+)/
  field :country, "Laos"
  field :a2, "LA"
  field :a3, "LAO"
end
