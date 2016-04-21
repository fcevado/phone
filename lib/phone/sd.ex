defmodule Phone.SD do
  use Helper.Country
  field :regex, ~r/^(249)()(.+)/
  field :country, "Sudan"
  field :a2, "SD"
  field :a3, "SDN"
  match :regex
end
