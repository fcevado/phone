defmodule Phone.GF do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(594)([5|6]94)(.{6})/
  def country, do: "French Guiana"
  def a2, do: "GF"
  def a3, do: "GUF"

  matcher :regex, ["594594", "594694"]
end
