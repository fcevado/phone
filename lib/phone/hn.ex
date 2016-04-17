defmodule Phone.HN do
  use Helper.Country
  field :regex, ~r/^(504)()(.{8})/
  field :country, "Honduras"
  field :a2, "HN"
  field :a3, "HND"
  match :regex
end
