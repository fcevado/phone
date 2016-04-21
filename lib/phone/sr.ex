defmodule Phone.SR do
  use Helper.Country
  field :regex, ~r/^(597)()(.{6,7})/
  field :country, "Suriname"
  field :a2, "SR"
  field :a3, "SUR"
  match :regex
end
