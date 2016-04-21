defmodule Phone.VN do
  use Helper.Country
  field :regex, ~r/^(84)()(.+)/
  field :country, "Vietnam"
  field :a2, "VN"
  field :a3, "VNM"
  match :regex
end
