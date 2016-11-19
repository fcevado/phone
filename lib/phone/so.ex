defmodule Phone.SO do
  use Helper.Country, match: :regex,
    number_prefix: "252"
  field :regex, ~r/^(252)()(.+)/
  field :country, "Somalia"
  field :a2, "SO"
  field :a3, "SOM"
end
