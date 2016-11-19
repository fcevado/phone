defmodule Phone.IS do
  use Helper.Country, match: :regex,
    number_prefix: "354"
  field :regex, ~r/^(354)()(.{7})/
  field :country, "Iceland"
  field :a2, "IS"
  field :a3, "ISL"
end
