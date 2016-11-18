defmodule Phone.PM do
  use Helper.Country, match: :regex
  field :regex, ~r/^(508)()(.{6})/
  field :country, "Saint Pierre and Miquelon"
  field :a2, "PM"
  field :a3, "SPM"
end
