defmodule Phone.MC do
  use Helper.Country
  field :regex, ~r/^(377)()(.{9})/
  field :country, "Monaco"
  field :a2, "MC"
  field :a3, "MCO"
  match :regex
end
