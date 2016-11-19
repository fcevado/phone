defmodule Phone.GR do
  use Helper.Country, match: :regex,
    number_prefix: "30"
  field :regex, ~r/^(30)()(.{10})/
  field :country, "Greece"
  field :a2, "GR"
  field :a3, "GRC"
end
