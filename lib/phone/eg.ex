defmodule Phone.EG do
  use Helper.Country, match: :regex,
    number_prefix: "20"
  field :regex, ~r/^(20)()(.+)/
  field :country, "Egypt"
  field :a2, "EG"
  field :a3, "EGY"
end
