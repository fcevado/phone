defmodule Phone.TG do
  use Helper.Country
  field :regex, ~r/^(228)()(.{8})/
  field :country, "Togo"
  field :a2, "TG"
  field :a3, "TGO"
  match :regex
end
