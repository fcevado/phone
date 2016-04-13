defmodule Phone.NANP.MS do
  use Helper.Country
  field :regex, ~r/^(1)(664)([2-9].{6})/
  field :country, "Montserrat"
  field :a2, "MS"
  field :a3, "MSR"
  match :regex
end
