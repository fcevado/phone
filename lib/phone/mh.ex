defmodule Phone.MH do
  use Helper.Country, match: :regex,
    number_prefix: "692"
  field :regex, ~r/^(692)()(.{6,7})/
  field :country, "Marshall Islands"
  field :a2, "MH"
  field :a3, "MHL"
end
