defmodule Phone.BJ do
  use Helper.Country
  field :regex, ~r/^(229)()(.{8})/
  field :country, "Benin"
  field :a2, "BJ"
  field :a3, "BEN"
  match :regex
end
