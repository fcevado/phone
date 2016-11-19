defmodule Phone.AT do
  use Helper.Country, match: :regex,
    number_prefix: "43"
  field :regex, ~r/^(43)()(.+)/
  field :country, "Austria"
  field :a2, "AT"
  field :a3, "AUT"
end
