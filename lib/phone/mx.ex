defmodule Phone.MX do
  use Helper.Country, match: :regex,
    number_prefix: "52"
  field :regex, ~r/^(52)()(.{10})/
  field :country, "Mexico"
  field :a2, "MX"
  field :a3, "MEX"
end
