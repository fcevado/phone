defmodule Phone.NANP.PR do
  use Helper.Country, match: :regex,
    number_prefix: "1"
  field :regex, ~r/^(1)(787|939)([2-9].{6})$/
  field :country, "Puerto Rico"
  field :a2, "PR"
  field :a3, "PRI"
end
