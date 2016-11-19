defmodule Phone.BD do
  use Helper.Country, match: :regex,
    number_prefix: "880"
  field :regex, ~r/^(880)()(.{10})/
  field :country, "Bangladesh"
  field :a2, "BD"
  field :a3, "BGD"
end
