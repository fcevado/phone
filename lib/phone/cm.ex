defmodule Phone.CM do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(237)()(.{8})/
  def country, do: "Cameroon"
  def a2, do: "CM"
  def a3, do: "CMR"

  matcher :regex, ["237"]
end
