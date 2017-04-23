defmodule Phone.IS do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(354)()(.{7})/
  def country, do: "Iceland"
  def a2, do: "IS"
  def a3, do: "ISL"

  matcher :regex, ["354"]
end
