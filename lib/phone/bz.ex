defmodule Phone.BZ do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(501)()(.{7})/
  def country, do: "Belize"
  def a2, do: "BZ"
  def a3, do: "BLZ"

  matcher(:regex, ["501"])
end
