defmodule Phone.NG do
  use Helper.Country, match: :regex
  field :regex, ~r/^(234)()(.+)/
  field :country, "Nigeria"
  field :a2, "NG"
  field :a3, "NGA"
end
