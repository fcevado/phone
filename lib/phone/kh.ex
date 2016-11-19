defmodule Phone.KH do
  use Helper.Country, match: :regex,
    number_prefix: "855"
  field :regex, ~r/^(855)(..)(.{6,7})/
  field :country, "Cambodia"
  field :a2, "KH"
  field :a3, "KHM"
end
