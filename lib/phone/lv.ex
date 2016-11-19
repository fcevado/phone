defmodule Phone.LV do
  use Helper.Country, match: :regex,
    number_prefix: "371"
  field :regex, ~r/^(371)()(.{8})/
  field :country, "Latvia"
  field :a2, "LV"
  field :a3, "LVA"
end
