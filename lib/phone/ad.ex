defmodule Phone.AD do
  use Helper.Country, match: :regex,
    number_prefix: "376"
  field :regex, ~r/^(376)()(.{6})/
  field :country, "Andorra"
  field :a2, "AD"
  field :a3, "AND"
end
