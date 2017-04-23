defmodule Phone.JO do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(962)(.)(.{7,8})/
  def country, do: "Jordan"
  def a2, do: "JO"
  def a3, do: "JOR"

  matcher :regex, ["962"]
end
