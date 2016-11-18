defmodule Phone.SN do
  use Helper.Country, match: :regex
  field :regex, ~r/^(221)()(.{7})/
  field :country, "Senegal"
  field :a2, "SN"
  field :a3, "SEN"
end
