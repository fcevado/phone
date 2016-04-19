defmodule Phone.NG do
  use Helper.Country
  field :regex, ~r/^(234)()(.+)/
  field :country, "Nigeria"
  field :a2, "NG"
  field :a3, "NGA"
  match :regex
end
