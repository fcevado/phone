defmodule Phone.BZ do
  use Helper.Country, match: :regex,
    number_prefix: "501"
  field :regex, ~r/^(501)()(.{7})/
  field :country, "Belize"
  field :a2, "BZ"
  field :a3, "BLZ"
end
