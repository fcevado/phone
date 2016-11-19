defmodule Phone.GA do
  use Helper.Country, match: :regex,
    number_prefix: "241"
  field :regex, ~r/^(241)()(.{7})/
  field :country, "Gabon"
  field :a2, "GA"
  field :a3, "GAB"
end
