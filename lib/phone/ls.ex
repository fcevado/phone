defmodule Phone.LS do
  use Helper.Country, match: :regex
  field :regex, ~r/^(266)(..)(.{6})/
  field :country, "Lesotho"
  field :a2, "LS"
  field :a3, "LSO"
end
