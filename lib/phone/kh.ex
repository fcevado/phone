defmodule Phone.KH do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(855)(..)(.{6,7})/
  def country, do: "Cambodia"
  def a2, do: "KH"
  def a3, do: "KHM"

  matcher(:regex, ["855"])
end
