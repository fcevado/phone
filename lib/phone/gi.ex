defmodule Phone.GI do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(350)()(.{8})/
  def country, do: "Gibraltar"
  def a2, do: "GI"
  def a3, do: "GIB"

  matcher :regex, ["350"]
end
