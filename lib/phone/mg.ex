defmodule Phone.MG do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(261)()(.+)/
  def country, do: "Madagascar"
  def a2, do: "MG"
  def a3, do: "MDG"

  matcher :regex, ["261"]
end
