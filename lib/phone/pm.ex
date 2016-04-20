defmodule Phone.PM do
  use Helper.Country
  field :regex, ~r/^(508)()(.{6})/
  field :country, "Saint Pierre and Miquelon"
  field :a2, "PM"
  field :a3, "SPM"
  match :regex
end
