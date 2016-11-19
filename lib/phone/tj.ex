defmodule Phone.TJ do
  use Helper.Country, match: :regex,
    number_prefix: "992"
  field :regex, ~r/^(992)()(.{9})/
  field :country, "Tajikistan"
  field :a2, "TJ"
  field :a3, "TJK"
end
