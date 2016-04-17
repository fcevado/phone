defmodule Phone.FJ do
  use Helper.Country
  field :regex, ~r/^(679)()(.{7})/
  field :country, "Fiji"
  field :a2, "FJ"
  field :a3, "FJI"
  match :regex
end
