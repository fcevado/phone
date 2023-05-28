defmodule Phone.GP do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(590)(.{3})(.{6})/
  def country, do: "Guadeloupe"
  def a2, do: "GP"
  def a3, do: "GLP"

  matcher(:regex, ["590"])
end
