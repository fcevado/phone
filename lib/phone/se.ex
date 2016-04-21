defmodule Phone.SE do
  use Helper.Country
  field :regex, ~r/^(46)()(.+)/
  field :country, "Sweden"
  field :a2, "SE"
  field :a3, "SWE"
  match :regex
end
