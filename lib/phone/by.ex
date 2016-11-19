defmodule Phone.BY do
  use Helper.Country, match: :regex,
    number_prefix: "375"
  field :regex, ~r/^(375)()(.{9})/
  field :country, "Belarus"
  field :a2, "BY"
  field :a3, "BLR"
end
