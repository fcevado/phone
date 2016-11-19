defmodule Phone.SR do
  use Helper.Country, match: :regex,
    number_prefix: "597"
  field :regex, ~r/^(597)()(.{6,7})/
  field :country, "Suriname"
  field :a2, "SR"
  field :a3, "SUR"
end
