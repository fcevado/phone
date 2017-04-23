defmodule Phone.UG do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(256)()(.{8})/
  def country, do: "Uganda"
  def a2, do: "UG"
  def a3, do: "UGA"

  matcher :regex, ["256"]
end
