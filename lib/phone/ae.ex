defmodule Phone.AE do
  use Helper.Country
  field :regex, ~r/^(971)(.)(.{7})/
  field :country, "United Arab Emirates"
  field :a2, "AE"
  field :a3, "ARE"
  match :regex
end
