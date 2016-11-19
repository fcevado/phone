defmodule Phone.UA do
  use Helper.Country, match: :regex,
    number_prefix: "380"
  field :regex, ~r/^(380)()(.{9})/
  field :country, "Ukraine"
  field :a2, "UA"
  field :a3, "UKR"
end
