defmodule Phone.UG do
  use Helper.Country
  field :regex, ~r/^(256)()(.{8})/
  field :country, "Uganda"
  field :a2, "UG"
  field :a3, "UGA"
  match :regex
end
