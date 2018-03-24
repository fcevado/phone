defmodule Phone.ST do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(239)()(.{7})/
  def country, do: "Sao Tome and Principe"
  def a2, do: "ST"
  def a3, do: "STP"

  matcher(:regex, ["239"])
end
