defmodule Phone.VN do
  use Helper.Country, match: :regex,
    number_prefix: "84"
  field :regex, ~r/^(84)()(.+)/
  field :country, "Vietnam"
  field :a2, "VN"
  field :a3, "VNM"
end
