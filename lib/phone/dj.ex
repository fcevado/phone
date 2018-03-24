defmodule Phone.DJ do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(253)()(.{8})/
  def country, do: "Djibouti"
  def a2, do: "DJ"
  def a3, do: "DJI"

  matcher(:regex, ["253"])
end
