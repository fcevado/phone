defmodule Phone.NZ do
  use Helper.Country, match: :regex
  field :regex, ~r/^(64)()(.+)/
  field :country, "New Zealand"
  field :a2, "NZ"
  field :a3, "NZL"
end
