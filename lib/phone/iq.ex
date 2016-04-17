defmodule Phone.IQ do
  use Helper.Country
  field :regex, ~r/^(964)()(.+)/
  field :country, "Iraq"
  field :a2, "IQ"
  field :a3, "IRQ"
  match :regex
end
