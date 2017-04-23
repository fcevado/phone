defmodule Phone.CV do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(238)()(.{7})/
  def country, do: "Cape Verde"
  def a2, do: "CV"
  def a3, do: "CPV"

  matcher :regex, ["238"]
end
