defmodule Phone.MO do
  use Helper.Country, match: :regex,
    number_prefix: "853"
  field :regex, ~r/^(853)()(.{8})/
  field :country, "Macao"
  field :a2, "MO"
  field :a3, "MAC"
end
