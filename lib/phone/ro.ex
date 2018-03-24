defmodule Phone.RO do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(40)()(.{9})/
  def country, do: "Romania"
  def a2, do: "RO"
  def a3, do: "ROU"

  matcher(:regex, ["40"])
end
