defmodule Phone.ZW do
  use Helper.Country
  field :regex, ~r/^(263)()(.+)/
  field :country, "Zimbabwe"
  field :a2, "ZW"
  field :a3, "ZWE"
  match :regex
end
