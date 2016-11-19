defmodule Phone.VU do
  use Helper.Country, match: :regex,
    number_prefix: "678"
  field :regex, ~r/^(678)()(.{5})/
  field :country, "Vanuatu"
  field :a2, "VU"
  field :a3, "VUT"
end
