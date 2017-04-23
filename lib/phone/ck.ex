defmodule Phone.CK do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(682)()(.{5})/
  def country, do: "Cook Islands"
  def a2, do: "CK"
  def a3, do: "COK"

  matcher :regex, ["682"]
end
