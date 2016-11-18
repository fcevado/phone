defmodule Phone.NANP.GU do
  use Helper.Country, match: :regex
  field :regex, ~r/^(1)(671)([2-9].{6})$/
  field :country, "Guam"
  field :a2, "GU"
  field :a3, "GUM"
end
