defmodule Phone.NANP.VG do
  use Helper.Country, match: :regex,
    number_prefix: "1"
  field :regex, ~r/^(1)(284)([2-9].{6})$/
  field :country, "British Virgin Islands"
  field :a2, "VG"
  field :a3, "VGB"
end
