defmodule Phone.MC do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(377)()(.{8})/
  def country, do: "Monaco"
  def a2, do: "MC"
  def a3, do: "MCO"

  matcher(:regex, ["377"])
end
