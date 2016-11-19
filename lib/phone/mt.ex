defmodule Phone.MT do
  use Helper.Country, match: :regex,
    number_prefix: "356"
  field :regex, ~r/^(356)()(.{8})/
  field :country, "Malta"
  field :a2, "MT"
  field :a3, "MLT"
end
