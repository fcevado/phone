defmodule Phone.IT do
  use Helper.Country, match: :regex,
    number_prefix: "39"
  field :regex, ~r/^(39)()(.{9,10})/
  field :country, "Italy"
  field :a2, "IT"
  field :a3, "ITA"
end
