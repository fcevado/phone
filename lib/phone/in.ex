defmodule Phone.IN do
  use Helper.Country, match: :regex
  field :regex, ~r/^(91)()(.+)/
  field :country, "India"
  field :a2, "IN"
  field :a3, "IND"
end
