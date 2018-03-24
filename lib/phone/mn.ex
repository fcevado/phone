defmodule Phone.MN do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(976)()(.+)/
  def country, do: "Mongolia"
  def a2, do: "MN"
  def a3, do: "MNG"

  matcher(:regex, ["976"])
end
