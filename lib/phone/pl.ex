defmodule Phone.PL do
  use Helper.Country
  field :regex, ~r/^(48)()(.+)/
  field :country, "Poland"
  field :a2, "PL"
  field :a3, "POL"
  match :regex
end
