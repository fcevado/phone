defmodule Phone.SO do
  use Helper.Country
  field :regex, ~r/^(252)()(.+)/
  field :country, "Somalia"
  field :a2, "SO"
  field :a3, "SOM"
  match :regex
end
