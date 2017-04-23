defmodule Phone.DK do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(45)()(.{8})/
  def country, do: "Denmark"
  def a2, do: "DK"
  def a3, do: "DNK"

  matcher :regex, ["45"]
end
