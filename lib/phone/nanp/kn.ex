defmodule Phone.NANP.KN do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(869)([2-9].{6})$/
  def country, do: "Saint Kitts and Nevis"
  def a2, do: "KN"
  def a3, do: "KNA"

  matcher :regex, ["1869"]
end
