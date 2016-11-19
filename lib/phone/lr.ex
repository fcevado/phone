defmodule Phone.LR do
  use Helper.Country, match: :regex,
    number_prefix: "231"
  field :regex, ~r/^(231)()(.{7,9})/
  field :country, "Liberia"
  field :a2, "LR"
  field :a3, "LBR"
end
