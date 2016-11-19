defmodule Phone.ZW do
  use Helper.Country, match: :regex,
    number_prefix: "263"
  field :regex, ~r/^(263)()(.+)/
  field :country, "Zimbabwe"
  field :a2, "ZW"
  field :a3, "ZWE"
end
