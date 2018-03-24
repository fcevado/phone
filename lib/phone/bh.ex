defmodule Phone.BH do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(973)()(.{8})/
  def country, do: "Bahrain"
  def a2, do: "BH"
  def a3, do: "BHR"

  matcher(:regex, ["973"])
end
