defmodule Phone.LS do
  use Helper.Country
  field :regex, ~r/^(266)(..)(.{6})/
  field :country, "Lesotho"
  field :a2, "LS"
  field :a3, "LSO"
  match :regex
end
