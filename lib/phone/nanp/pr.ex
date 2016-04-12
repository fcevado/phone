defmodule Phone.NANP.PR do
  use Helper.Country
  field :regex, ~r/^(1)(787|393)([2-9].{6})/
  field :country, "Puerto Rico"
  field :a2, "PR"
  field :a3, "PRI"
  match :regex
end
