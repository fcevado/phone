defmodule Phone.CR do
  use Helper.Country, match: :regex
  field :regex, ~r/^(506)()(.{8})/
  field :country, "Costa Rica"
  field :a2, "CR"
  field :a3, "CRI"
end
