defmodule Phone.RW do
  use Helper.Country, match: :regex,
    number_prefix: "250"
  field :regex, ~r/^(250)()(.{9})/
  field :country, "Rwanda"
  field :a2, "RW"
  field :a3, "RWA"
end
