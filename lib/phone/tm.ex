defmodule Phone.TM do
  use Helper.Country, match: :regex,
    number_prefix: "993"
  field :regex, ~r/^(993)()(.+)/
  field :country, "Turkmenistan"
  field :a2, "TM"
  field :a3, "TKM"
end
