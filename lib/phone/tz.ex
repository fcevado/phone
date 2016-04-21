defmodule Phone.TZ do
  use Helper.Country
  field :regex, ~r/^(255)()(.{9})/
  field :country, "Tanzania"
  field :a2, "TZ"
  field :a3, "TZA"
  match :regex
end
