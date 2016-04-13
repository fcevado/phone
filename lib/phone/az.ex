defmodule Phone.AZ do
  use Helper.Country
  field :regex, ~r/^(994)()(.{9})/
  field :country, "Azerbeijan"
  field :a2, "AZ"
  field :a3, "AZE"
  match :regex
end
