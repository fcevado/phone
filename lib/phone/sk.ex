defmodule Phone.SK do
  use Helper.Country
  field :regex, ~r/^(421)()(.+)/
  field :country, "Slovakia"
  field :a2, "SK"
  field :a3, "SVK"
  match :regex
end
