defmodule Phone.TO do
  use Helper.Country, match: :regex,
    number_prefix: "676"
  field :regex, ~r/^(676)()(.+)/
  field :country, "Tonga"
  field :a2, "TO"
  field :a3, "TON"
end
