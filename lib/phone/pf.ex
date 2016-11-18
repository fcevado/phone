defmodule Phone.PF do
  use Helper.Country, match: :regex
  field :regex, ~r/^(689)()(.{8})/
  field :country, "French Polynesia"
  field :a2, "PF"
  field :a3, "PYF"
end
