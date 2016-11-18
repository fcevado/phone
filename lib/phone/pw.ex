defmodule Phone.PW do
  use Helper.Country, match: :regex
  field :regex, ~r/^(680)()(.{7})/
  field :country, "Palau"
  field :a2, "PW"
  field :a3, "PLW"
end
