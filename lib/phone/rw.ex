defmodule Phone.RW do
  use Helper.Country
  field :regex, ~r/^(250)()(.{9})/
  field :country, "Rwanda"
  field :a2, "RW"
  field :a3, "RWA"
  match :regex
end
