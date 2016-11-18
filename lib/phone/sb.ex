defmodule Phone.SB do
  use Helper.Country, match: :regex
  field :regex, ~r/^(677)()(.+)/
  field :country, "Solomon Islands"
  field :a2, "SB"
  field :a3, "SLB"
end
