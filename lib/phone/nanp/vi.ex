defmodule Phone.NANP.VI do
  use Helper.Country, match: :regex
  field :regex, ~r/^(1)(340)([2-9].{6})$/
  field :country, "US Virgin Islands"
  field :a2, "VI"
  field :a3, "VIR"
end
