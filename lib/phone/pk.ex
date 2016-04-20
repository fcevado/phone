defmodule Phone.PK do
  use Helper.Country
  field :regex, ~r/^(92)()(.+'')/
  field :country, "Pakistan"
  field :a2, "PK"
  field :a3, "PAK"
  match :regex
end
