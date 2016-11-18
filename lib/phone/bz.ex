defmodule Phone.BZ do
  use Helper.Country, match: :regex
  field :regex, ~r/^(501)()(.{7})/
  field :country, "Belize"
  field :a2, "BZ"
  field :a3, "BLZ"
end
