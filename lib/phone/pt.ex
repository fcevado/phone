defmodule Phone.PT do
  use Helper.Country, match: :regex,
    number_prefix: "351"
  field :regex, ~r/^(351)()(.{9})/
  field :country, "Portugal"
  field :a2, "PT"
  field :a3, "PRT"
end
