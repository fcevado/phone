defmodule Phone.AT do
  use Helper.Country, match: :regex
  field :regex, ~r/^(43)()(.+)/
  field :country, "Austria"
  field :a2, "AT"
  field :a3, "AUT"
end
