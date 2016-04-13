defmodule Phone.BR do
  use Helper.Country
  field :regex, ~r/^(55)(..)(.{8,9})/
  field :country, "Brazil"
  field :a2, "BR"
  field :a3, "BRA"
  match :regex
end
