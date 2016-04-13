defmodule Phone.AL do
  use Helper.Country
  field :regex, ~r/^(355)()(.{7})/
  field :country, "Albania"
  field :a2, "AL"
  field :a3, "ALB"
  match :regex
end
