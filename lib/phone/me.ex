defmodule Phone.ME do
  use Helper.Country
  field :regex, ~r/^(382)(..)(.{6})/
  field :country, "Montenegro"
  field :a2, "ME"
  field :a3, "MNE"
  match :regex
end
