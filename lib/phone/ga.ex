defmodule Phone.GA do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(241)()(.{7})/
  def country, do: "Gabon"
  def a2, do: "GA"
  def a3, do: "GAB"

  matcher :regex, ["241"]
end
