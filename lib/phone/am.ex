defmodule Phone.AM do
  use Helper.Country, match: :regex
  field :regex, ~r/^(374)()(.{8})/
  field :country, "Armenia"
  field :a2, "AM"
  field :a3, "ARM"
end
