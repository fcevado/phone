defmodule Phone.BW do
  use Helper.Country, match: :regex,
    number_prefix: "267"
  field :regex, ~r/^(267)()(.{7})/
  field :country, "Botswana"
  field :a2, "BW"
  field :a3, "BWA"
end
