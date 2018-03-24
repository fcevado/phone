defmodule Phone.NANP.DO do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(8[0|2|4]9)([2-9].{6})$/
  def country, do: "Dominican Republic"
  def a2, do: "DO"
  def a3, do: "DOM"

  matcher(:regex, ["1809", "1829", "1849"])
end
