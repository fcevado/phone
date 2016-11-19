defmodule Phone.CH do
  use Helper.Country, match: :regex,
    number_prefix: "41"
  field :regex, ~r/^(41)()(.{9,10})/
  field :country, "Switzerland"
  field :a2, "CH"
  field :a3, "CHE"
end
