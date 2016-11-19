defmodule Phone.ME do
  use Helper.Country, match: :regex,
    number_prefix: "382"
  field :regex, ~r/^(382)(..)(.{6})/
  field :country, "Montenegro"
  field :a2, "ME"
  field :a3, "MNE"
end
