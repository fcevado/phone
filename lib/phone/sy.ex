defmodule Phone.SY do
  use Helper.Country
  field :regex, ~r/^(963)()(.+)/
  field :country, "Syria"
  field :a2, "SY"
  field :a3, "SYR"
  match :regex
end
