defmodule Phone.BH do
  use Helper.Country, match: :regex,
    number_prefix: "973"
  field :regex, ~r/^(973)()(.{8})/
  field :country, "Bahrain"
  field :a2, "BH"
  field :a3, "BHR"
end
