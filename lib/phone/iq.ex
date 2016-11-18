defmodule Phone.IQ do
  use Helper.Country, match: :regex
  field :regex, ~r/^(964)()(.+)/
  field :country, "Iraq"
  field :a2, "IQ"
  field :a3, "IRQ"
end
