defmodule Phone.CZ do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(420)()(.{9})/
  def country, do: "Czech Republic"
  def a2, do: "CZ"
  def a3, do: "CZE"

  matcher :regex, ["420"]
end
