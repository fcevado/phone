defmodule Phone.IL do
  use Helper.Country, match: :regex
  field :regex, ~r/^(972)()(.{8,9})/
  field :country, "Israel"
  field :a2, "IL"
  field :a3, "ISR"
end
