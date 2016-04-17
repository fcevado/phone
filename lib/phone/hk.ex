defmodule Phone.HK do
  use Helper.Country
  field :regex, ~r/^(852)()(.{8})/
  field :country, "Hong Kong"
  field :a2, "HK"
  field :a3, "HKG"
  match :regex
end
