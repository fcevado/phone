defmodule Phone.AR do
  use Helper.Country, match: :regex
  field :regex, ~r/^(54)()(.{10})/
  field :country, "Argentina"
  field :a2, "AR"
  field :a3, "ARG"
end
