defmodule Phone.AW do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(297)()(.{7})/
  def country, do: "Aruba"
  def a2, do: "AW"
  def a3, do: "ABW"

  matcher(:regex, ["297"])
end
