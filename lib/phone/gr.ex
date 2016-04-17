defmodule Phone.GR do
  use Helper.Country
  field :regex, ~r/^(30)()(.{10})/
  field :country, "Greece"
  field :a2, "GR"
  field :a3, "GRC"
  match :regex
end
