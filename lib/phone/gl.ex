defmodule Phone.GL do
  use Helper.Country

  def regex, do: ~r/^(299)(..)(.{4})/
  def country, do: "Greenland"
  def a2, do: "GL"
  def a3, do: "GRL"

  matcher :regex, ["299"]
end
