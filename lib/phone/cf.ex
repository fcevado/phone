defmodule Phone.CF do
  use Helper.Country, match: :regex,
    number_prefix: "236"
  field :regex, ~r/^(236)()(.{8})/
  field :country, "Central African Republic"
  field :a2, "CF"
  field :a3, "CAF"
end
