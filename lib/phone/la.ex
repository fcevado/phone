defmodule Phone.LA do
  use Helper.Country
  field :regex, ~r/^(856)(..)(.+)/
  field :country, "Laos"
  field :a2, "LA"
  field :a3, "LAO"
  match :regex
end
