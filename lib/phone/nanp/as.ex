defmodule Phone.NANP.AS do
  use Helper.Country, match: :regex,
    number_prefix: "1"
  field :regex, ~r/^(1)(684)([2-9].{6})$/
  field :country, "American Samoa"
  field :a2, "AS"
  field :a3, "ASM"
end
