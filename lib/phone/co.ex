defmodule Phone.CO do
  use Helper.Country, match: :regex
  field :regex, ~r/^(57)()(.+)/
  field :country, "Colombia"
  field :a2, "CO"
  field :a3, "COL"
end
