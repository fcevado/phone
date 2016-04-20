defmodule Phone.PT do
  use Helper.Country
  field :regex, ~r/^(351)()(.{9})/
  field :country, "Portugal"
  field :a2, "PT"
  field :a3, "PRT"
  match :regex
end
