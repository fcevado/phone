defmodule Phone.PM do
  use Helper.Country, match: :regex,
    number_prefix: "508"
  field :regex, ~r/^(508)()(.{6})/
  field :country, "Saint Pierre and Miquelon"
  field :a2, "PM"
  field :a3, "SPM"
end
