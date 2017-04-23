defmodule Phone.TV do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(688)()(.{5,6})/
  def country, do: "Tuvalu"
  def a2, do: "TV"
  def a3, do: "TUV"

  matcher :regex, ["688"]
end
