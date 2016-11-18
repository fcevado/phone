defmodule Phone.BG do
  use Helper.Country, match: :regex
  field :regex, ~r/^(359)()(.{8,9})/
  field :country, "Bulgaria"
  field :a2, "BG"
  field :a3, "BGR"
end
