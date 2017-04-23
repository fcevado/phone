defmodule Phone.NL do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(31)()(.{9})/
  def country, do: "Netherlands"
  def a2, do: "NL"
  def a3, do: "NLD"

  matcher :regex, ["31"]
end
