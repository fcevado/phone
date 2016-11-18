defmodule Phone.AZ do
  use Helper.Country, match: :regex
  field :regex, ~r/^(994)()(.{9})/
  field :country, "Azerbeijan"
  field :a2, "AZ"
  field :a3, "AZE"
end
