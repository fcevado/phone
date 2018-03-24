defmodule Phone.SY do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(963)()(.+)/
  def country, do: "Syria"
  def a2, do: "SY"
  def a3, do: "SYR"

  matcher(:regex, ["963"])
end
