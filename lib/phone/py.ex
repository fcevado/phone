defmodule Phone.PY do
  use Helper.Country, match: :regex
  field :regex, ~r/^(595)()(.+)/
  field :country, "Paraguay"
  field :a2, "PY"
  field :a3, "PRY"
end
