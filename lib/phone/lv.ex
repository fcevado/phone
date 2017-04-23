defmodule Phone.LV do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(371)()(.{8})/
  def country, do: "Latvia"
  def a2, do: "LV"
  def a3, do: "LVA"

  matcher :regex, ["371"]
end
