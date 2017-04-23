defmodule Phone.NANP.VG do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(284)([2-9].{6})$/
  def country, do: "British Virgin Islands"
  def a2, do: "VG"
  def a3, do: "VGB"

  matcher :regex, ["1284"]
end
