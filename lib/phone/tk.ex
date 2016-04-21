defmodule Phone.TK do
  use Helper.Country
  field :regex, ~r/^(690)([1-9])(.{3})/
  field :country, "Tokelau"
  field :a2, "TK"
  field :a3, "TKL"
  match :regex
end
