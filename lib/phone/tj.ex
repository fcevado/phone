defmodule Phone.TJ do
  use Helper.Country, match: :regex
  field :regex, ~r/^(992)()(.{9})/
  field :country, "Tajikistan"
  field :a2, "TJ"
  field :a3, "TJK"
end
