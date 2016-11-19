defmodule Phone.SB do
  use Helper.Country, match: :regex,
    number_prefix: "677"
  field :regex, ~r/^(677)()(.+)/
  field :country, "Solomon Islands"
  field :a2, "SB"
  field :a3, "SLB"
end
