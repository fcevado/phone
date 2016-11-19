defmodule Phone.FM do
  use Helper.Country, match: :regex,
    number_prefix: "691"
  field :regex, ~r/^(691)()(.{7})/
  field :country, "Micronesia"
  field :a2, "FM"
  field :a3, "FSM"
end
