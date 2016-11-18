defmodule Phone.VU do
  use Helper.Country, match: :regex
  field :regex, ~r/^(678)()(.{5})/
  field :country, "Vanuatu"
  field :a2, "VU"
  field :a3, "VUT"
end
