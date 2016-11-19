defmodule Phone.NANP.MS do
  use Helper.Country, match: :regex,
    number_prefix: "1"
  field :regex, ~r/^(1)(664)([2-9].{6})$/
  field :country, "Montserrat"
  field :a2, "MS"
  field :a3, "MSR"
end
