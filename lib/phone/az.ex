defmodule Phone.AZ do
  use Helper.Country, match: :regex,
    number_prefix: "994"
  field :regex, ~r/^(994)()(.{9})/
  field :country, "Azerbeijan"
  field :a2, "AZ"
  field :a3, "AZE"
end
