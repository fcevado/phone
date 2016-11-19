defmodule Phone.RS do
  use Helper.Country, match: :regex,
    number_prefix: "381"
  field :regex, ~r/^(381)()(.+)/
  field :country, "Serbia"
  field :a2, "RS"
  field :a3, "SRB"
end
