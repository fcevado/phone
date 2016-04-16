defmodule Phone.EC do
  use Helper.Country
  field :regex, ~r/^(593)(..)(.{7})/
  field :country, "Ecuador"
  field :a2, "EC"
  field :a3, "ECU"
  match :regex
end
