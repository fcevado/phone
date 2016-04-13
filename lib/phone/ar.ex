defmodule Phone.AR do
  use Helper.Country
  field :regex, ~r/^(54)()(.{10})/
  field :country, "Argentina"
  field :a2, "AR"
  field :a3, "ARG"
  match :regex
end
