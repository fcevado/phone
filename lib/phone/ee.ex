defmodule Phone.EE do
  use Helper.Country, match: :regex
  field :regex, ~r/^(372)()(.{7,8})/
  field :country, "Estonia"
  field :a2, "EE"
  field :a3, "EST"
end
