defmodule Phone.ER do
  use Helper.Country
  field :regex, ~r/^(291)(.)(.{6})/
  field :country, "Eritrea"
  field :a2, "ER"
  field :a3, "ERI"
  match :regex
end
