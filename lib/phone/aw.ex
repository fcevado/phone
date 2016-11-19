defmodule Phone.AW do
  use Helper.Country, match: :regex,
    number_prefix: "297"
  field :regex, ~r/^(297)()(.{7})/
  field :country, "Aruba"
  field :a2, "AW"
  field :a3, "ABW"
end
