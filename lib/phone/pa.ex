defmodule Phone.PA do
  use Helper.Country, match: :regex
  field :regex, ~r/^(507)()(.{7})/
  field :country, "Panama"
  field :a2, "PA"
  field :a3, "PAN"
end
