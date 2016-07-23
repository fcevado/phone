defmodule Phone.NANP.DM do
  use Helper.Country
  field :regex, ~r/^(1)(767)([2-9].{6})$/
  field :country, "Dominica"
  field :a2, "DM"
  field :a3, "DMA"
  match :regex
end
