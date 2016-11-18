defmodule Phone.MW do
  use Helper.Country, match: :regex
  field :regex, ~r/^(265)()(.{7,9})/
  field :country, "Malawi"
  field :a2, "MW"
  field :a3, "MWI"
end
