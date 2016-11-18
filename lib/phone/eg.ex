defmodule Phone.EG do
  use Helper.Country, match: :regex
  field :regex, ~r/^(20)()(.+)/
  field :country, "Egypt"
  field :a2, "EG"
  field :a3, "EGY"
end
