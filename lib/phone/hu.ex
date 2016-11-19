defmodule Phone.HU do
  use Helper.Country, match: :regex,
    number_prefix: "36"
  field :regex, ~r/^(36)()(.{8,9})/
  field :country, "Hungary"
  field :a2, "HU"
  field :a3, "HUN"
end
