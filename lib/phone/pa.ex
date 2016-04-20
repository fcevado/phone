defmodule Phone.PA do
  use Helper.Country
  field :regex, ~r/^(507)()(.{7})/
  field :country, "Panama"
  field :a2, "PA"
  field :a3, "PAN"
  match :regex
end
