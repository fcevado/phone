defmodule Phone.SC do
  use Helper.Country
  field :regex, ~r/^(248)()(.{7})/
  field :country, "Seychelles"
  field :a2, "SC"
  field :a3, "SYC"
  match :regex
end
