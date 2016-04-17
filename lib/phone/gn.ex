defmodule Phone.GN do
  use Helper.Country
  field :regex, ~r/^(224)()(.{8})/
  field :country, "Guinea"
  field :a2, "GN"
  field :a3, "GIN"
  match :regex
end
