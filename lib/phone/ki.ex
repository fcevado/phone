defmodule Phone.KI do
  use Helper.Country, match: :regex,
    number_prefix: "686"
  field :regex, ~r/^(686)()(.{5})/
  field :country, "Kiribati"
  field :a2, "KI"
  field :a3, "KIR"
end
