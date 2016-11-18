defmodule Phone.HN do
  use Helper.Country, match: :regex
  field :regex, ~r/^(504)()(.{8})/
  field :country, "Honduras"
  field :a2, "HN"
  field :a3, "HND"
end
