defmodule Phone.AM do
  use Helper.Country
  field :regex, ~r/^(374)()(.{8})/
  field :country, "Armenia"
  field :a2, "AM"
  field :a3, "ARM"
  match :regex
end
