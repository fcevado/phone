defmodule Phone.NI do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(505)()(.{8})/
  def country, do: "Nicaragua"
  def a2, do: "NI"
  def a3, do: "NIC"

  matcher(:regex, ["505"])
end
