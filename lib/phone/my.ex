defmodule Phone.MY do
  use Helper.Country, match: :regex,
    number_prefix: "60"
  field :regex, ~r/^(60)()(.+)/
  field :country, "Malaysia"
  field :a2, "MY"
  field :a3, "MYS"
end
