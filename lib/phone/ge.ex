defmodule Phone.GE do
  use Helper.Country
  field :regex, ~r/^(995)(.{3})(.{6})/
  field :country, "Georgia"
  field :a2, "GE"
  field :a3, "GEO"
  match :regex
end
