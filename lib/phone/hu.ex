defmodule Phone.HU do
  use Helper.Country
  field :regex, ~r/^(36)()(.{8,9})/
  field :country, "Hungary"
  field :a2, "HU"
  field :a3, "HUN"
  match :regex
end
