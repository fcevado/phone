defmodule Phone.FJ do
  use Helper.Country, match: :regex,
    number_prefix: "679"
  field :regex, ~r/^(679)()(.{7})/
  field :country, "Fiji"
  field :a2, "FJ"
  field :a3, "FJI"
end
