defmodule Phone.HR do
  use Helper.Country, match: :regex,
    number_prefix: "385"
  field :regex, ~r/^(385)()(.{8,9})/
  field :country, "Croatia"
  field :a2, "HR"
  field :a3, "HRV"
end
