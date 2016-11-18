defmodule Phone.MA do
  use Helper.Country, match: :regex
  field :regex, ~r/^(212)()(.{9})/
  field :country, "Morocco"
  field :a2, "MA"
  field :a3, "MAR"
end
