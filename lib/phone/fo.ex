defmodule Phone.FO do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(298)()(.{6})/
  def country, do: "Faroe Islands"
  def a2, do: "FO"
  def a3, do: "FRO"

  matcher(:regex, ["298"])
end
