defmodule Phone.HN do
  use Helper.Country, match: :regex,
    number_prefix: "504"
  field :regex, ~r/^(504)()(.{8})/
  field :country, "Honduras"
  field :a2, "HN"
  field :a3, "HND"
end
