defmodule Phone.MN do
  use Helper.Country
  field :regex, ~r/^(976)()(.+)/
  field :country, "Mongolia"
  field :a2, "MN"
  field :a3, "MNG"
  match :regex
end
