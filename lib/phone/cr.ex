defmodule Phone.CR do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(506)()(.{8})/
  def country, do: "Costa Rica"
  def a2, do: "CR"
  def a3, do: "CRI"

  matcher(:regex, ["506"])
end
