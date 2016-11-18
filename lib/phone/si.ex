defmodule Phone.SI do
  use Helper.Country, match: :regex
  field :regex, ~r/^(386)()(.+)/
  field :country, "Slovenia"
  field :a2, "SI"
  field :a3, "SVN"
end
