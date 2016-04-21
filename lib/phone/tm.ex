defmodule Phone.TM do
  use Helper.Country
  field :regex, ~r/^(993)()(.+)/
  field :country, "Turkmenistan"
  field :a2, "TM"
  field :a3, "TKM"
  match :regex
end
