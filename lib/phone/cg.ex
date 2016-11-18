defmodule Phone.CG do
  use Helper.Country, match: :regex
  field :regex, ~r/^(242)(.{4})(.{5})/
  field :country, "Congo"
  field :a2, "CG"
  field :a3, "COG"
end
