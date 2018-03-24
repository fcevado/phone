defmodule Phone.NC do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(687)()(.{6})/
  def country, do: "New Caledonia"
  def a2, do: "NC"
  def a3, do: "NCL"

  matcher(:regex, ["687"])
end
