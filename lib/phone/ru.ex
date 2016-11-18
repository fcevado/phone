defmodule Phone.RU do
  use Helper.Country, match: :regex
  field :regex, ~r/^(7)([3-589]..)(.{7})/
  field :country, "Russia"
  field :a2, "RU"
  field :a3, "RUS"
end
