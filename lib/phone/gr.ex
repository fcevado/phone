defmodule Phone.GR do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(30)()(.{10})/
  def country, do: "Greece"
  def a2, do: "GR"
  def a3, do: "GRC"

  matcher :regex, ["30"]
end
