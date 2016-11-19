defmodule Phone.TN do
  use Helper.Country, match: :regex,
    number_prefix: "216"
  field :regex, ~r/^(216)()(.{8})/
  field :country, "Tunisia"
  field :a2, "TN"
  field :a3, "TUN"
end
