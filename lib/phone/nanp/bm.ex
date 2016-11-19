defmodule Phone.NANP.BM do
  use Helper.Country, match: :regex,
    number_prefix: "1"
  field :regex, ~r/^(1)(441)([2-9].{6})$/
  field :country, "Bermuda"
  field :a2, "BM"
  field :a3, "BMU"
end
