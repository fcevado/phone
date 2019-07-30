defmodule Phone.DE do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(49)()(.{8,11})/
  def country, do: "Germany"
  def a2, do: "DE"
  def a3, do: "DEU"

  matcher(:regex, ["49"])
end
