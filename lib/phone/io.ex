defmodule Phone.IO do
  use Helper.Country
  field :regex, ~r/^(246)() (.{7})/
  field :country, "British Indian Ocean Territory"
  field :a2, "IO"
  field :a3, "IOT"
  match :regex
end
