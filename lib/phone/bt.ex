defmodule Phone.BT do
  use Helper.Country, match: :regex,
    number_prefix: "975"
  field :regex, ~r/^(975)()(.{7,8})/
  field :country, "Bhutan"
  field :a2, "BT"
  field :a3, "BTN"
end
