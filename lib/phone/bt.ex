defmodule Phone.BT do
  use Helper.Country, match: :regex
  field :regex, ~r/^(975)()(.{7,8})/
  field :country, "Bhutan"
  field :a2, "BT"
  field :a3, "BTN"
end
