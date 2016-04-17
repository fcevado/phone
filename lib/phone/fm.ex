defmodule Phone.FM do
  use Helper.Country
  field :regex, ~r/^(691)()(.{7})/
  field :country, "Micronesia"
  field :a2, "FM"
  field :a3, "FSM"
  match :regex
end
