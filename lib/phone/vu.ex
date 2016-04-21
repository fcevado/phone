defmodule Phone.VU do
  use Helper.Country
  field :regex, ~r/^(678)()(.{5})/
  field :country, "Vanuatu"
  field :a2, "VU"
  field :a3, "VUT"
  match :regex
end
