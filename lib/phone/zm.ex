defmodule Phone.ZM do
  use Helper.Country, match: :regex
  field :regex, ~r/^(260)()(.{7})/
  field :country, "Zambia"
  field :a2, "ZM"
  field :a3, "ZMB"
end
