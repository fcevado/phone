defmodule Phone.GY do
  use Helper.Country, match: :regex,
    number_prefix: "592"
  field :regex, ~r/^(592)()(.{8})/
  field :country, "Guyana"
  field :a2, "GY"
  field :a3, "GUY"
end
