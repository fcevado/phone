defmodule Phone.EC do
  use Helper.Country, match: :regex,
    number_prefix: "593"
  field :regex, ~r/^(593)(..)(.{7})/
  field :country, "Ecuador"
  field :a2, "EC"
  field :a3, "ECU"
end
