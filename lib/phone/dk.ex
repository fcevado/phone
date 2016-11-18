defmodule Phone.DK do
  use Helper.Country, match: :regex
  field :regex, ~r/^(45)()(.{8})/
  field :country, "Denmark"
  field :a2, "DK"
  field :a3, "DNK"
end
