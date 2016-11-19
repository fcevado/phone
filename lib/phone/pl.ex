defmodule Phone.PL do
  use Helper.Country, match: :regex,
    number_prefix: "48"
  field :regex, ~r/^(48)()(.+)/
  field :country, "Poland"
  field :a2, "PL"
  field :a3, "POL"
end
