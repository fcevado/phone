defmodule Phone.EG do
  use Helper.Country
  field :regex, ~r/^(20)()(.+)/
  field :country, "Egypt"
  field :a2, "EG"
  field :a3, "EGY"
  match :regex
end
