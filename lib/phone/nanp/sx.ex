defmodule Phone.NANP.SX do
  use Helper.Country, match: :regex,
    number_prefix: "1"
  field :regex, ~r/^(1)(721)([2-9].{6})$/
  field :country, "Sint Maarten"
  field :a2, "SX"
  field :a3, "SXM"
end
