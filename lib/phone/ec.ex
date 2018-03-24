defmodule Phone.EC do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(593)(..)(.{7})/
  def country, do: "Ecuador"
  def a2, do: "EC"
  def a3, do: "ECU"

  matcher(:regex, ["593"])
end
