defmodule Phone.NANP.BB do
  use Helper.Country, match: :regex
  field :regex, ~r/^(1)(246)([2-9].{6})$/
  field :country, "Barbados"
  field :a2, "BB"
  field :a3, "BRB"
end
