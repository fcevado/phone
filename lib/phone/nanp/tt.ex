defmodule Phone.NANP.TT do
  use Helper.Country, match: :regex,
    number_prefix: "1"
  field :regex, ~r/^(1)(868)([2-9].{6})$/
  field :country, "Trinidad and Tobago"
  field :a2, "TT"
  field :a3, "TTO"
end
