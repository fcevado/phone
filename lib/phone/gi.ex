defmodule Phone.GI do
  use Helper.Country, match: :regex
  field :regex, ~r/^(350)()(.{8})/
  field :country, "Gibraltar"
  field :a2, "GI"
  field :a3, "GIB"
end
