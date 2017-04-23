defmodule Phone.SO do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(252)()(.+)/
  def country, do: "Somalia"
  def a2, do: "SO"
  def a3, do: "SOM"

  matcher :regex, ["252"]
end
