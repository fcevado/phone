defmodule Phone.DJ do
  use Helper.Country, match: :regex,
    number_prefix: "253"
  field :regex, ~r/^(253)()(.{8})/
  field :country, "Djibouti"
  field :a2, "DJ"
  field :a3, "DJI"
end
