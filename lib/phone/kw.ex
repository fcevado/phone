defmodule Phone.KW do
  use Helper.Country
  field :regex, ~r/^(965)()(.{8})/
  field :country, "Kuwait"
  field :a2, "KW"
  field :a3, "KWT"
  match :regex
end
