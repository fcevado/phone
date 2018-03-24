defmodule Phone.NANP.LC do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(758)([2-9].{6})$/
  def country, do: "Saint Lucia"
  def a2, do: "LC"
  def a3, do: "LCA"

  matcher(:regex, ["1758"])
end
