defmodule Phone.SH do
  use Helper.Country, match: :regex
  field :regex, ~r/^(290)()(.{5})/
  field :country, "Saint Helena and Tristan da Cunha"
  field :a2, "SH"
  field :a3, "SHN"
end
