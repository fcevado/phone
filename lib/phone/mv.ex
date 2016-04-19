defmodule Phone.MV do
  use Helper.Country
  field :regex, ~r/^(960)()(.{7})/
  field :country, "Maldives"
  field :a2, "MV"
  field :a3, "MDV"
  match :regex
end
