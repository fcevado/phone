defmodule Phone.MH do
  use Helper.Country
  field :regex, ~r/^(692)()(.{6,7})/
  field :country, "Marshall Islands"
  field :a2, "MH"
  field :a3, "MHL"
  match :regex
end
