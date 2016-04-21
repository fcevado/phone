defmodule Phone.PH do
  use Helper.Country
  field :regex, ~r/^(63)()(.+)/
  field :country, "Philippines"
  field :a2, "PH"
  field :a3, "PHL"
  match :regex
end
