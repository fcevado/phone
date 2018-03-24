defmodule Phone.CL do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(56)()(.{9})/
  def country, do: "Chile"
  def a2, do: "CL"
  def a3, do: "CHL"

  matcher(:regex, ["56"])
end
