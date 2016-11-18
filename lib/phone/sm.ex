defmodule Phone.SM do
  use Helper.Country, match: :regex
  field :regex, ~r/^(378)(0549)(.{6})/
  field :country, "San Marino"
  field :a2, "SM"
  field :a3, "SMR"
end
