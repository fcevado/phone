defmodule Phone.CM do
  use Helper.Country, match: :regex
  field :regex, ~r/^(237)()(.{8})/
  field :country, "Cameroon"
  field :a2, "CM"
  field :a3, "CMR"
end
