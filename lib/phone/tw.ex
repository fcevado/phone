defmodule Phone.TW do
  use Helper.Country, match: :regex,
    number_prefix: "886"
  field :regex, ~r/^(886)()(.+)/
  field :country, "Taiwan"
  field :a2, "TW"
  field :a3, "TWN"
end
