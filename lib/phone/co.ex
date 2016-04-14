defmodule Phone.CO do
  use Helper.Country
  field :regex, ~r/^(57)()(.+)/
  field :country, "Colombia"
  field :a2, "CO"
  field :a3, "COL"
  match :regex
end
