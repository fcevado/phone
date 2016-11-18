defmodule Phone.IS do
  use Helper.Country, match: :regex
  field :regex, ~r/^(354)()(.{7})/
  field :country, "Iceland"
  field :a2, "IS"
  field :a3, "ISL"
end
