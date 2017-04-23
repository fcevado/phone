defmodule Phone.BE do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(32)()(.{9})/
  def country, do: "Belgium"
  def a2, do: "BE"
  def a3, do: "BEL"

  matcher :regex, ["32"]
end
