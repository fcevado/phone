defmodule Phone.SG do
  use Helper.Country, match: :regex,
    number_prefix: "65"
  field :regex, ~r/^(65)()(.{8})/
  field :country, "Singapore"
  field :a2, "SG"
  field :a3, "SGP"
end
