defmodule Phone.SG do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(65)()(.{8})/
  def country, do: "Singapore"
  def a2, do: "SG"
  def a3, do: "SGP"

  matcher :regex, ["65"]
end
