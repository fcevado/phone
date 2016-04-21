defmodule Phone.TH do
  use Helper.Country
  field :regex, ~r/^(66)()(.+)/
  field :country, "Thailand"
  field :a2, "TH"
  field :a3, "THA"
  match :regex
end
