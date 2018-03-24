defmodule Phone.NP do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(977)()(.{8})/
  def country, do: "Nepal"
  def a2, do: "NP"
  def a3, do: "NPL"

  matcher(:regex, ["977"])
end
