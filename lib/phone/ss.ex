defmodule Phone.SS do
  use Helper.Country
  field :regex, ~r/^(211)()(.+)/
  field :country, "South Sudan"
  field :a2, "SS"
  field :a3, "SSD"
  match :regex
end
