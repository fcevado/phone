defmodule Phone.NANP.BS do
  use Helper.Country, match: :regex
  field :regex, ~r/^(1)(242)([2-9].{6})$/
  field :country, "Bahamas"
  field :a2, "BS"
  field :a3, "BHS"
end
