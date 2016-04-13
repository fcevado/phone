defmodule Phone.KZ do
  use Helper.Country
  field :regex, ~r/^(7)([67]..)(.{7})/
  field :country, "Kazakhstan"
  field :a2, "KZ"
  field :a3, "KAZ"
  match :regex
end
