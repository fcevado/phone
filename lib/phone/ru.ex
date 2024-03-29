defmodule Phone.RU do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(7)([3-589]..)(.{7})/
  def country, do: "Russia"
  def a2, do: "RU"
  def a3, do: "RUS"

  matcher(:regex, ["73", "74", "75", "78", "79"])
end
