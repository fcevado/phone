defmodule Phone.LI do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(423)()(.{7})/
  def country, do: "Liechtenstein"
  def a2, do: "LI"
  def a3, do: "LIE"

  matcher(:regex, ["423"])
end
