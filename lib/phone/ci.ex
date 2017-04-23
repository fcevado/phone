defmodule Phone.CI do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(225)(..)(.{6})/
  def country, do: "Ivory Coast"
  def a2, do: "CI"
  def a3, do: "CIV"

  matcher :regex, ["225"]
end
