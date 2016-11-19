defmodule Phone.SY do
  use Helper.Country, match: :regex,
    number_prefix: "963"
  field :regex, ~r/^(963)()(.+)/
  field :country, "Syria"
  field :a2, "SY"
  field :a3, "SYR"
end
