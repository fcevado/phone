defmodule Phone.CR do
  use Helper.Country, match: :regex,
    number_prefix: "506"
  field :regex, ~r/^(506)()(.{8})/
  field :country, "Costa Rica"
  field :a2, "CR"
  field :a3, "CRI"
end
