defmodule Phone.AO do
  use Helper.Country, match: :regex
  field :regex, ~r/^(244)()(9)/
  field :country, "Angola"
  field :a2, "AO"
  field :a3, "AGO"
end
