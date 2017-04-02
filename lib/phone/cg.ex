defmodule Phone.CG do
  use Helper.Country

  def regex, do: ~r/^(242)(.{4})(.{5})/
  def country, do: "Congo"
  def a2, do: "CG"
  def a3, do: "COG"

  matcher :regex, ["242"]
end
