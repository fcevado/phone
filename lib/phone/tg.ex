defmodule Phone.TG do
  use Helper.Country, match: :regex
  field :regex, ~r/^(228)()(.{8})/
  field :country, "Togo"
  field :a2, "TG"
  field :a3, "TGO"
end
