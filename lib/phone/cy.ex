defmodule Phone.CY do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(357)()(.{7,8})/
  def country, do: "Cyprus"
  def a2, do: "CY"
  def a3, do: "CYP"

  matcher :regex, ["357"]
end
