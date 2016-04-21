defmodule Phone.TW do
  use Helper.Country
  field :regex, ~r/^(886)()(.+)/
  field :country, "Taiwan"
  field :a2, "TW"
  field :a3, "TWN"
  match :regex
end
