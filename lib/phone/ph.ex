defmodule Phone.PH do
  use Helper.Country, match: :regex,
    number_prefix: "63"
  field :regex, ~r/^(63)()(.+)/
  field :country, "Philippines"
  field :a2, "PH"
  field :a3, "PHL"
end
