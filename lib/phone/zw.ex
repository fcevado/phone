defmodule Phone.ZW do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(263)()(.+)/
  def country, do: "Zimbabwe"
  def a2, do: "ZW"
  def a3, do: "ZWE"

  matcher :regex, ["263"]
end
