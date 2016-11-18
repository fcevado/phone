defmodule Phone.SE do
  use Helper.Country, match: :regex
  field :regex, ~r/^(46)()(.+)/
  field :country, "Sweden"
  field :a2, "SE"
  field :a3, "SWE"
end
