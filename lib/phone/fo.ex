defmodule Phone.FO do
  use Helper.Country, match: :regex
  field :regex, ~r/^(298)()(.{6})/
  field :country, "Faroe Islands"
  field :a2, "FO"
  field :a3, "FRO"
end
