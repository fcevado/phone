defmodule Phone.NANP.VC do
  use Helper.Country, match: :regex
  field :regex, ~r/^(1)(784)([2-9].{6})$/
  field :country, "Saint Vicent and the Grenadines"
  field :a2, "VC"
  field :a3, "VCT"
end
