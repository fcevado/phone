defmodule Phone.TZ do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(255)()(.{9})/
  def country, do: "Tanzania"
  def a2, do: "TZ"
  def a3, do: "TZA"

  matcher :regex, ["255"]
end
