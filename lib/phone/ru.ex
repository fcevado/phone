defmodule Phone.RU do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(7|8)([3-589]..)(.{7})/
  def country, do: "Russia"
  def trunk_prefix, do: "8"
  def country_code, do: "7"
  def a2, do: "RU"
  def a3, do: "RUS"

  matcher :regex, ["73", "75", "78", "79", "83", "85", "88", "89"]
end
