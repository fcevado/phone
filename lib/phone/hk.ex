defmodule Phone.HK do
  use Helper.Country, match: :regex
  field :regex, ~r/^(852)()(.{8})/
  field :country, "Hong Kong"
  field :a2, "HK"
  field :a3, "HKG"
end
