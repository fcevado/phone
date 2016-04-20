defmodule Phone.PS do
  use Helper.Country
  field :regex, ~r/^(970)()(.{8,9})/
  field :country, "Palestine"
  field :a2, "DJ"
  field :a3, "DJI"
  match :regex
end
