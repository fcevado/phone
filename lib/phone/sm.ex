defmodule Phone.SM do
  use Helper.Country
  field :regex, ~r/^(378)(0549)(.{6})/
  field :country, "San Marino"
  field :a2, "SM"
  field :a3, "SMR"
  match :regex
end
