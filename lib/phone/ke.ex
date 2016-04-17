defmodule Phone.KE do
  use Helper.Country
  field :regex, ~r/^(254)()(.+)/
  field :country, "Kenya"
  field :a2, "KE"
  field :a3, "KEN"
  match :regex
end
