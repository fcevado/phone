defmodule Phone.CY do
  use Helper.Country, match: :regex
  field :regex, ~r/^(357)()(.{7,8})/
  field :country, "Cyprus"
  field :a2, "CY"
  field :a3, "CYP"
end
