defmodule Phone.BN do
  use Helper.Country
  field :regex, ~r/^(673)()(.{7})/
  field :country, "Brunei"
  field :a2, "BN"
  field :a3, "BRN"
  match :regex
end
