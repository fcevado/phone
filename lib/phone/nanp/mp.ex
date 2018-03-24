defmodule Phone.NANP.MP do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(670)([2-9].{6})$/
  def country, do: "Northern Mariana Islands"
  def a2, do: "MP"
  def a3, do: "MNP"

  matcher(:regex, ["1670"])
end
