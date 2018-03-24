defmodule Phone.TM do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(993)()(.+)/
  def country, do: "Turkmenistan"
  def a2, do: "TM"
  def a3, do: "TKM"

  matcher(:regex, ["993"])
end
