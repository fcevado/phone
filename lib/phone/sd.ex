defmodule Phone.SD do
  use Helper.Country, match: :regex
  field :regex, ~r/^(249)()(.+)/
  field :country, "Sudan"
  field :a2, "SD"
  field :a3, "SDN"
end
