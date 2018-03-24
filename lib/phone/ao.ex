defmodule Phone.AO do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(244)()(.{9})/
  def country, do: "Angola"
  def a2, do: "AO"
  def a3, do: "AGO"

  matcher(:regex, ["244"])
end
