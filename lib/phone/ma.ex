defmodule Phone.MA do
  use Helper.Country
  field :regex, ~r/^(212)()(.{9})/
  field :country, "Morocco"
  field :a2, "MA"
  field :a3, "MAR"
  match :regex
end
