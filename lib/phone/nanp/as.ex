defmodule Phone.NANP.AS do
  use Helper.Country

  def regex, do: ~r/^(1)(684)([2-9].{6})$/
  def country, do: "American Samoa"
  def a2, do: "AS"
  def a3, do: "ASM"

  matcher :regex, ["1684"]
end
