defmodule Phone.TJ do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(992)()(.{9})/
  def country, do: "Tajikistan"
  def a2, do: "TJ"
  def a3, do: "TJK"

  matcher :regex, ["992"]
end
