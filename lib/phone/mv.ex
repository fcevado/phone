defmodule Phone.MV do
  use Helper.Country, match: :regex,
    number_prefix: "960"
  field :regex, ~r/^(960)()(.{7})/
  field :country, "Maldives"
  field :a2, "MV"
  field :a3, "MDV"
end
