defmodule Phone.AW do
  use Helper.Country
  field :regex, ~r/^(297)()(.{7})/
  field :country, "Aruba"
  field :a2, "AW"
  field :a3, "ABW"
  match :regex
end
