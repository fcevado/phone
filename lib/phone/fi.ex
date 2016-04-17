defmodule Phone.FI do
  use Helper.Country
  field :regex, ~r/^(358)()(.+)/
  field :country, "Finland"
  field :a2, "FI"
  field :a3, "FIN"
  match :regex
end
