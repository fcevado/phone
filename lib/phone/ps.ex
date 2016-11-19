defmodule Phone.PS do
  use Helper.Country, match: :regex,
    number_prefix: "970"
  field :regex, ~r/^(970)()(.{8,9})/
  field :country, "Palestine"
  field :a2, "DJ"
  field :a3, "DJI"
end
