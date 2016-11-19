defmodule Phone.MK do
  use Helper.Country, match: :regex,
    number_prefix: "389"
  field :regex, ~r/^(389)()(.{8})/
  field :country, "Macedonia"
  field :a2, "MK"
  field :a3, "MKD"
end
