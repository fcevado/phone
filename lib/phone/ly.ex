defmodule Phone.LY do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(218)()(.+)/
  def country, do: "Libya"
  def a2, do: "LY"
  def a3, do: "LBY"

  matcher :regex, ["218"]
end
