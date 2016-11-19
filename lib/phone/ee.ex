defmodule Phone.EE do
  use Helper.Country, match: :regex,
    number_prefix: "372"
  field :regex, ~r/^(372)()(.{7,8})/
  field :country, "Estonia"
  field :a2, "EE"
  field :a3, "EST"
end
