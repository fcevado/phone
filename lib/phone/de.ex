defmodule Phone.DE do
  use Helper.Country, match: :regex,
    number_prefix: "49"
  field :regex, ~r/^(49)()(.{10,11})/
  field :country, "Germany"
  field :a2, "DE"
  field :a3, "DEU"
end
