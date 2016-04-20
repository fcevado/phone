defmodule Phone.RS do
  use Helper.Country
  field :regex, ~r/^(381)()(.+)/
  field :country, "Serbia"
  field :a2, "RS"
  field :a3, "SRB"
  match :regex
end
