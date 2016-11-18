defmodule Phone.JO do
  use Helper.Country, match: :regex
  field :regex, ~r/^(962)(.)(.{7,8})/
  field :country, "Jordan"
  field :a2, "JO"
  field :a3, "JOR"
end
