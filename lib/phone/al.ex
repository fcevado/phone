defmodule Phone.AL do
  use Helper.Country, match: :regex,
    number_prefix: "355"
  field :regex, ~r/^(355)()(.{7})/
  field :country, "Albania"
  field :a2, "AL"
  field :a3, "ALB"
end
