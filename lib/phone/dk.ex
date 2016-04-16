defmodule Phone.DK do
  use Helper.Country
  field :regex, ~r/^(45)()(.{8})/
  field :country, "Denmark"
  field :a2, "DK"
  field :a3, "DNK"
  match :regex
end
