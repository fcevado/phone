defmodule Phone.CM do
  use Helper.Country
  field :regex, ~r/^(237)()(.{8})/
  field :country, "Cameroon"
  field :a2, "CM"
  field :a3, "CMR"
  match :regex
end
