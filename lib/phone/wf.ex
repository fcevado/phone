defmodule Phone.WF do
  use Helper.Country
  field :regex, ~r/^(681)()(.{6})/
  field :country, "Wallis and Futuna"
  field :a2, "WF"
  field :a3, "WLF"
  match :regex
end
