defmodule Phone.NP do
  use Helper.Country, match: :regex,
    number_prefix: "977"
  field :regex, ~r/^(977)()(.{8})/
  field :country, "Nepal"
  field :a2, "NP"
  field :a3, "NPL"
end
