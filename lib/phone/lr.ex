defmodule Phone.LR do
  use Helper.Country
  field :regex, ~r/^(231)()(.{7,9})/
  field :country, "Liberia"
  field :a2, "LR"
  field :a3, "LBR"
  match :regex
end
