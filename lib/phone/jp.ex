defmodule Phone.JP do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(81)()(.+)/
  def country, do: "Japan"
  def a2, do: "JP"
  def a3, do: "JPN"

  matcher(:regex, ["81"])
end
