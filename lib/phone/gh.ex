defmodule Phone.GH do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(233)(..)(.{7})/
  def country, do: "Ghana"
  def a2, do: "GH"
  def a3, do: "GHA"

  matcher(:regex, ["233"])
end
