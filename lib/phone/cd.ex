defmodule Phone.CD do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(243)(.)(.{7})/
  def country, do: "Democratic Republic of Congo"
  def a2, do: "CD"
  def a3, do: "COD"

  matcher(:regex, ["243"])
end
