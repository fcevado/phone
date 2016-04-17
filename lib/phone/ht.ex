defmodule Phone.HT do
  use Helper.Country
  field :regex, ~r/^(509)()(.{8})/
  field :country, "Haiti"
  field :a2, "HT"
  field :a3, "HTI"
  match :regex
end
