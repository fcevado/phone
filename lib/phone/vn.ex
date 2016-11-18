defmodule Phone.VN do
  use Helper.Country, match: :regex
  field :regex, ~r/^(84)()(.+)/
  field :country, "Vietnam"
  field :a2, "VN"
  field :a3, "VNM"
end
