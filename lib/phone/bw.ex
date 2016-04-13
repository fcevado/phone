defmodule Phone.BW do
  use Helper.Country
  field :regex, ~r/^(267)()(.{7})/
  field :country, "Botswana"
  field :a2, "BW"
  field :a3, "BWA"
  match :regex
end
