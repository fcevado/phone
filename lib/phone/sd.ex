defmodule Phone.SD do
  use Helper.Country, match: :regex,
    number_prefix: "249"
  field :regex, ~r/^(249)()(.+)/
  field :country, "Sudan"
  field :a2, "SD"
  field :a3, "SDN"
end
