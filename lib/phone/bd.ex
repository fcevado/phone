defmodule Phone.BD do
  use Helper.Country, match: :regex
  field :regex, ~r/^(880)()(.{10})/
  field :country, "Bangladesh"
  field :a2, "BD"
  field :a3, "BGD"
end
