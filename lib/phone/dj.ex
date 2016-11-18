defmodule Phone.DJ do
  use Helper.Country, match: :regex
  field :regex, ~r/^(253)()(.{8})/
  field :country, "Djibouti"
  field :a2, "DJ"
  field :a3, "DJI"
end
