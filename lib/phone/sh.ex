defmodule Phone.SH do
  use Helper.Country
  field :regex, ~r/^(290)()(.{5})/
  field :country, "Saint Helena and Tristan da Cunha"
  field :a2, "SH"
  field :a3, "SHN"
  match :regex
end
