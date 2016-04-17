defmodule Phone.GA do
  use Helper.Country
  field :regex, ~r/^(241)()(.{7})/
  field :country, "Gabon"
  field :a2, "GA"
  field :a3, "GAB"
  match :regex
end
