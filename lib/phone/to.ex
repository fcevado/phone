defmodule Phone.TO do
  use Helper.Country, match: :regex
  field :regex, ~r/^(676)()(.+)/
  field :country, "Tonga"
  field :a2, "TO"
  field :a3, "TON"
end
