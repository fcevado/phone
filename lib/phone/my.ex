defmodule Phone.MY do
  use Helper.Country
  field :regex, ~r/^(60)()(.+)/
  field :country, "Malaysia"
  field :a2, "MY"
  field :a3, "MYS"
  match :regex
end
