defmodule Phone.IO do
  use Helper.Country, match: :regex,
    number_prefix: "246"
  field :regex, ~r/^(246)() (.{7})/
  field :country, "British Indian Ocean Territory"
  field :a2, "IO"
  field :a3, "IOT"
end
