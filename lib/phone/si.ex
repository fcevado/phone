defmodule Phone.SI do
  use Helper.Country, match: :regex,
    number_prefix: "386"
  field :regex, ~r/^(386)()(.+)/
  field :country, "Slovenia"
  field :a2, "SI"
  field :a3, "SVN"
end
