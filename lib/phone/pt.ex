defmodule Phone.PT do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(351)()(.{9})/
  def country, do: "Portugal"
  def a2, do: "PT"
  def a3, do: "PRT"

  matcher(:regex, ["351"])
end
