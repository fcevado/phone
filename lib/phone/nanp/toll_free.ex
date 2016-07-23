defmodule Phone.NANP.TollFree do
  use Helper.Country
  field :regex, ~r/^(1)(800|844|855|866|877|888)([2-9].{6})$/
  field :country, "NANP tool-free"
  field :a2, ""
  field :a3, ""
  match :regex
end
