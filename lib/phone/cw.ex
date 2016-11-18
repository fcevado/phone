defmodule Phone.CW do
  use Helper.Country, match: :regex
  field :regex, ~r/^(599)(9)(.{7})/
  field :country, "Curaçao"
  field :a2, "CW"
  field :a3, "CUW"
end
