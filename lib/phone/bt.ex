defmodule Phone.BT do
  use Helper.Country

  def regex, do: ~r/^(975)()(.{7,8})/
  def country, do: "Bhutan"
  def a2, do: "BT"
  def a3, do: "BTN"

  matcher :regex, ["975"]
end
