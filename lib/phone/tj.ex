defmodule Phone.TJ do
  use Helper.Country
  field :regex, ~r/^(992)()(.{9})/
  field :country, "Tajikistan"
  field :a2, "TJ"
  field :a3, "TJK"
  match :regex
end
