defmodule Phone.VE do
  use Helper.Country, match: :regex
  field :regex, ~r/^(58)(.{3})(.{7})/
  field :country, "Venezuela"
  field :a2, "VE"
  field :a3, "VEN"
end
