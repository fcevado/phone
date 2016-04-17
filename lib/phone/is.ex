defmodule Phone.IS do
  use Helper.Country
  field :regex, ~r/^(354)()(.{7})/
  field :country, "Iceland"
  field :a2, "IS"
  field :a3, "ISL"
  match :regex
end
