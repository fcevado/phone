defmodule Phone.NANP.TC do
  use Helper.Country, match: :regex
  field :regex, ~r/^(1)(649)([2-9].{6})$/
  field :country, "Turks and Caicos Islands"
  field :a2, "TC"
  field :a3, "TCA"
end
