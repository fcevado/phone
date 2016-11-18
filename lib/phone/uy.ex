defmodule Phone.UY do
  use Helper.Country, match: :regex
  field :regex, ~r/^(598)()(.+)/
  field :country, "Uruguay"
  field :a2, "UY"
  field :a3, "URY"
end
