defmodule Phone.WF do
  use Helper.Country, match: :regex
  field :regex, ~r/^(681)()(.{6})/
  field :country, "Wallis and Futuna"
  field :a2, "WF"
  field :a3, "WLF"
end
