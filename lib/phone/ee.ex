defmodule Phone.EE do
  use Helper.Country

  def regex, do: ~r/^(372)()(.{7,8})/
  def country, do: "Estonia"
  def a2, do: "EE"
  def a3, do: "EST"

  matcher :regex, ["372"]
end
