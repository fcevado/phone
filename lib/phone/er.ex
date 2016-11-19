defmodule Phone.ER do
  use Helper.Country, match: :regex,
    number_prefix: "291"
  field :regex, ~r/^(291)(.)(.{6})/
  field :country, "Eritrea"
  field :a2, "ER"
  field :a3, "ERI"
end
