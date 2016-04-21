defmodule Phone.TO do
  use Helper.Country
  field :regex, ~r/^(676)()(.+)/
  field :country, "Tonga"
  field :a2, "TO"
  field :a3, "TON"
  match :regex
end
