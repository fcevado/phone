defmodule Phone.MW do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(265)()(.{7,9})/
  def country, do: "Malawi"
  def a2, do: "MW"
  def a3, do: "MWI"

  matcher(:regex, ["265"])
end
