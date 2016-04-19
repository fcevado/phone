defmodule Phone.MT do
  use Helper.Country
  field :regex, ~r/^(356)()(.{8})/
  field :country, "Malta"
  field :a2, "MT"
  field :a3, "MLT"
  match :regex
end
