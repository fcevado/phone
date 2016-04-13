defmodule Phone.AT do
  use Helper.Country
  field :regex, ~r/^(43)()(.+)/
  field :country, "Austria"
  field :a2, "AT"
  field :a3, "AUT"
  match :regex
end
