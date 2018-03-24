defmodule Phone.SK do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(421)()(.+)/
  def country, do: "Slovakia"
  def a2, do: "SK"
  def a3, do: "SVK"

  matcher(:regex, ["421"])
end
