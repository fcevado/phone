defmodule Phone.FM do
  use Helper.Country, match: :regex
  field :regex, ~r/^(691)()(.{7})/
  field :country, "Micronesia"
  field :a2, "FM"
  field :a3, "FSM"
end
