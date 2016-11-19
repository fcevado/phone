defmodule Phone.GM do
  use Helper.Country, match: :regex,
    number_prefix: "220"
  field :regex, ~r/^(220)()(.{7})/
  field :country, "Gambia"
  field :a2, "GM"
  field :a3, "GMB"
end
