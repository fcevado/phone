defmodule Phone.MT do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(356)()(.{8})/
  def country, do: "Malta"
  def a2, do: "MT"
  def a3, do: "MLT"

  matcher :regex, ["356"]
end
