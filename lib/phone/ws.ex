defmodule Phone.WS do
  use Helper.Country
  field :regex, ~r/^(685)()(.{6,7})/
  field :country, "Samoa"
  field :a2, "WS"
  field :a3, "WSM"
  match :regex
end
