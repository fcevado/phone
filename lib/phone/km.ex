defmodule Phone.KM do
  use Helper.Country, match: :regex,
    number_prefix: "269"
  field :regex, ~r/^(269)(.{3})(.{4})/
  field :country, "Comoros"
  field :a2, "KM"
  field :a3, "COM"
end
