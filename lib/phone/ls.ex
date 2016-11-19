defmodule Phone.LS do
  use Helper.Country, match: :regex,
    number_prefix: "266"
  field :regex, ~r/^(266)(..)(.{6})/
  field :country, "Lesotho"
  field :a2, "LS"
  field :a3, "LSO"
end
