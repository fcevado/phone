defmodule Phone.MC do
  use Helper.Country, match: :regex,
    number_prefix: "377"
  field :regex, ~r/^(377)()(.{9})/
  field :country, "Monaco"
  field :a2, "MC"
  field :a3, "MCO"
end
