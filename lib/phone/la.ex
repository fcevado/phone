defmodule Phone.LA do
  use Helper.Country, match: :regex,
    number_prefix: "856"
  field :regex, ~r/^(856)(..)(.+)/
  field :country, "Laos"
  field :a2, "LA"
  field :a3, "LAO"
end
