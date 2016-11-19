defmodule Phone.ML do
  use Helper.Country, match: :regex,
    number_prefix: "223"
  field :regex, ~r/^(223)()(.{8})/
  field :country, "Mali"
  field :a2, "ML"
  field :a3, "MLI"
end
