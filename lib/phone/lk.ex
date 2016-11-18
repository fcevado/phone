defmodule Phone.LK do
  use Helper.Country, match: :regex
  field :regex, ~r/^(94)()(.{9})/
  field :country, "Sri Lanka"
  field :a2, "LK"
  field :a3, "LKA"
end
