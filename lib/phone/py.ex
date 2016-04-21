defmodule Phone.PY do
  use Helper.Country
  field :regex, ~r/^(595)()(.+)/
  field :country, "Paraguay"
  field :a2, "PY"
  field :a3, "PRY"
  match :regex
end
