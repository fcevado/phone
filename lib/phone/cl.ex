defmodule Phone.CL do
  use Helper.Country, match: :regex,
    number_prefix: "56"
  field :regex, ~r/^(56)()(.{9})/
  field :country, "Chile"
  field :a2, "CL"
  field :a3, "CHL"
end
