defmodule Phone.LA do
  use Helper.Country

  def regex, do: ~r/^(856)(..)(.+)/
  def country, do: "Laos"
  def a2, do: "LA"
  def a3, do: "LAO"

  matcher :regex, ["856"]
end
