defmodule Phone.SS do
  use Helper.Country, match: :regex,
    number_prefix: "211"
  field :regex, ~r/^(211)()(.+)/
  field :country, "South Sudan"
  field :a2, "SS"
  field :a3, "SSD"
end
