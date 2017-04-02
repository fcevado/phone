defmodule Phone.WF do
  use Helper.Country

  def regex, do: ~r/^(681)()(.{6})/
  def country, do: "Wallis and Futuna"
  def a2, do: "WF"
  def a3, do: "WLF"

  matcher :regex, ["681"]
end
