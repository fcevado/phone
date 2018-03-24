defmodule Phone.BI do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(257)()(.{8})/
  def country, do: "Burundi"
  def a2, do: "BI"
  def a3, do: "BDI"

  matcher(:regex, ["257"])
end
