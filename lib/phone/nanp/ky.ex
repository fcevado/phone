defmodule Phone.NANP.KY do
  use Helper.Country, match: :regex
  field :regex, ~r/^(1)(345)([2-9].{6})$/
  field :country, "Cayman Islands"
  field :a2, "KY"
  field :a3, "CYM"
end
