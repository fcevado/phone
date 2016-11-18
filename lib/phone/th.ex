defmodule Phone.TH do
  use Helper.Country, match: :regex
  field :regex, ~r/^(66)()(.+)/
  field :country, "Thailand"
  field :a2, "TH"
  field :a3, "THA"
end
