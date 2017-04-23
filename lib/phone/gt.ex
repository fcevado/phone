defmodule Phone.GT do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(502)()(.{8})/
  def country, do: "Guatemala"
  def a2, do: "GT"
  def a3, do: "GTM"

  matcher :regex, ["502"]
end
