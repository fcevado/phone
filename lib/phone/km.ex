defmodule Phone.KM do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(269)(.{3})(.{4})/
  def country, do: "Comoros"
  def a2, do: "KM"
  def a3, do: "COM"

  matcher(:regex, ["269"])
end
