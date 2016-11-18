defmodule Phone.NE do
  use Helper.Country, match: :regex
  field :regex, ~r/^(227)()(.{8})/
  field :country, "Niger"
  field :a2, "NE"
  field :a3, "NER"
end
