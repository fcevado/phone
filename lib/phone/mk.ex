defmodule Phone.MK do
  use Helper.Country, match: :regex
  field :regex, ~r/^(389)()(.{8})/
  field :country, "Macedonia"
  field :a2, "MK"
  field :a3, "MKD"
end
