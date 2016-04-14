defmodule Phone.CR do
  use Helper.Country
  field :regex, ~r/^(506)()(.{8})/
  field :country, "Costa Rica"
  field :a2, "CR"
  field :a3, "CRI"
  match :regex
end
