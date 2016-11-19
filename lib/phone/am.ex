defmodule Phone.AM do
  use Helper.Country, match: :regex,
    number_prefix: "374"
  field :regex, ~r/^(374)()(.{8})/
  field :country, "Armenia"
  field :a2, "AM"
  field :a3, "ARM"
end
