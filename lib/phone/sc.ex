defmodule Phone.SC do
  use Helper.Country, match: :regex,
    number_prefix: "248"
  field :regex, ~r/^(248)()(.{7})/
  field :country, "Seychelles"
  field :a2, "SC"
  field :a3, "SYC"
end
