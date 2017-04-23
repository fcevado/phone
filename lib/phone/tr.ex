defmodule Phone.TR do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(90)(.{3})(.{7})/
  def country, do: "Turkey"
  def a2, do: "TR"
  def a3, do: "TUR"

  matcher :regex, ["90"]
end
