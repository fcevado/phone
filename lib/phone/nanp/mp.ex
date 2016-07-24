defmodule Phone.NANP.MP do
  use Helper.Country
  field :regex, ~r/^(1)(670)([2-9].{6})$/
  field :country, "Northern Mariana Islands"
  field :a2, "MP"
  field :a3, "MNP"
  match :regex
end
