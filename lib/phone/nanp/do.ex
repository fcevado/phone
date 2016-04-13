defmodule Phone.NANP.DO do
  use Helper.Country
  field :regex, ~r/^(1)(8[0|2|4]9)([2-9].{6})/
  field :country, "Dominican Republic"
  field :a2, "DO"
  field :a3, "DOM"
  match :regex
end
