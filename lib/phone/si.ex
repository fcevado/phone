defmodule Phone.SI do
  use Helper.Country
  field :regex, ~r/^(386)()(.+)/
  field :country, "Slovenia"
  field :a2, "SI"
  field :a3, "SVN"
  match :regex
end
