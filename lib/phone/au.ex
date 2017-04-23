defmodule Phone.AU do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(61)([1-478])(.{8})/
  def country, do: "Australia"
  def a2, do: "AU"
  def a3, do: "AUS"

  matcher :regex, ["61"]
end
