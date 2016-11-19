defmodule Phone.AE do
  use Helper.Country, match: :regex,
    number_prefix: "971"
  field :regex, ~r/^(971)(.)(.{7})/
  field :country, "United Arab Emirates"
  field :a2, "AE"
  field :a3, "ARE"
end
