defmodule Phone.BJ do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(229)()(.{8})/
  def country, do: "Benin"
  def a2, do: "BJ"
  def a3, do: "BEN"

  matcher(:regex, ["229"])
end
