defmodule Phone.KI do
  use Helper.Country
  field :regex, ~r/^(686)()(.{5})/
  field :country, "Kiribati"
  field :a2, "KI"
  field :a3, "KIR"
  match :regex
end
