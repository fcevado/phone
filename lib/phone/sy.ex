defmodule Phone.SY do
  use Helper.Country, match: :regex
  field :regex, ~r/^(963)()(.+)/
  field :country, "Syria"
  field :a2, "SY"
  field :a3, "SYR"
end
