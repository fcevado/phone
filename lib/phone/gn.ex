defmodule Phone.GN do
  use Helper.Country, match: :regex,
    number_prefix: "224"
  field :regex, ~r/^(224)()(.{8})/
  field :country, "Guinea"
  field :a2, "GN"
  field :a3, "GIN"
end
