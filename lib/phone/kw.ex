defmodule Phone.KW do
  use Helper.Country, match: :regex,
    number_prefix: "965"
  field :regex, ~r/^(965)()(.{8})/
  field :country, "Kuwait"
  field :a2, "KW"
  field :a3, "KWT"
end
