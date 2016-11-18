defmodule Phone.GF do
  use Helper.Country, match: :regex
  field :regex, ~r/^(594)([5|6]94)(.{6})/
  field :country, "French Guiana"
  field :a2, "GF"
  field :a3, "GUF"
end
