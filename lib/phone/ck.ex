defmodule Phone.CK do
  use Helper.Country, match: :regex,
    number_prefix: "682"
  field :regex, ~r/^(682)()(.{5})/
  field :country, "Cook Islands"
  field :a2, "CK"
  field :a3, "COK"
end
