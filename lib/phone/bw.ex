defmodule Phone.BW do
  use Helper.Country, match: :regex
  field :regex, ~r/^(267)()(.{7})/
  field :country, "Botswana"
  field :a2, "BW"
  field :a3, "BWA"
end
