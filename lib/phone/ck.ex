defmodule Phone.CK do
  use Helper.Country
  field :regex, ~r/^(682)()(.{5})/
  field :country, "Cook Islands"
  field :a2, "CK"
  field :a3, "COK"
  match :regex
end
