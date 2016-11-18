defmodule Phone.KG do
  use Helper.Country, match: :regex
  field :regex, ~r/^(996)()(.{9})/
  field :country, "Kyrgyzstan"
  field :a2, "KG"
  field :a3, "KGZ"
end
