defmodule Phone.GE do
  use Helper.Country, match: :regex,
    number_prefix: "995"
  field :regex, ~r/^(995)(.{3})(.{6})/
  field :country, "Georgia"
  field :a2, "GE"
  field :a3, "GEO"
end
