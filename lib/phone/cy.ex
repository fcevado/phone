defmodule Phone.CY do
  use Helper.Country, match: :regex,
    number_prefix: "357"
  field :regex, ~r/^(357)()(.{7,8})/
  field :country, "Cyprus"
  field :a2, "CY"
  field :a3, "CYP"
end
