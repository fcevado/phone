defmodule Phone.MO do
  use Helper.Country, match: :regex
  field :regex, ~r/^(853)()(.{8})/
  field :country, "Macao"
  field :a2, "MO"
  field :a3, "MAC"
end
