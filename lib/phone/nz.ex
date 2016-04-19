defmodule Phone.NZ do
  use Helper.Country
  field :regex, ~r/^(64)()(.+)/
  field :country, "New Zealand"
  field :a2, "NZ"
  field :a3, "NZL"
  match :regex
end
