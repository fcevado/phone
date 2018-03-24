defmodule Phone.FR do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(33)()(.{9})/
  def country, do: "France"
  def a2, do: "FR"
  def a3, do: "FRA"

  matcher(:regex, ["33"])
end
