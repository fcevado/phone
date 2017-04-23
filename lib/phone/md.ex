defmodule Phone.MD do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(373)()(.{8})/
  def country, do: "Moldova"
  def a2, do: "MD"
  def a3, do: "MDA"

  matcher :regex, ["373"]
end
