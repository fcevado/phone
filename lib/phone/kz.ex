defmodule Phone.KZ do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(7)([67]..)(.{7})/
  def country, do: "Kazakhstan"
  def a2, do: "KZ"
  def a3, do: "KAZ"

  matcher :regex, ["76", "77"]
end
