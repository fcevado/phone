defmodule Phone.TG do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(228)()(.{8})/
  def country, do: "Togo"
  def a2, do: "TG"
  def a3, do: "TGO"

  matcher :regex, ["228"]
end
