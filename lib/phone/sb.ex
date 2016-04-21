defmodule Phone.SB do
  use Helper.Country
  field :regex, ~r/^(677)()(.+)/
  field :country, "Solomon Islands"
  field :a2, "SB"
  field :a3, "SLB"
  match :regex
end
