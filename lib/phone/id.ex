defmodule Phone.ID do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(62)()(.+)/
  def country, do: "Indonesia"
  def a2, do: "ID"
  def a3, do: "IDN"

  matcher :regex, ["62"]
end
