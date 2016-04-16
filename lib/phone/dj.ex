defmodule Phone.DJ do
  use Helper.Country
  field :regex, ~r/^(253)()(.{8})/
  field :country, "Djibouti"
  field :a2, "DJ"
  field :a3, "DJI"
  match :regex
end
