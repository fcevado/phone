defmodule Phone.UA do
  use Helper.Country, match: :regex
  field :regex, ~r/^(380)()(.{9})/
  field :country, "Ukraine"
  field :a2, "UA"
  field :a3, "UKR"
end
