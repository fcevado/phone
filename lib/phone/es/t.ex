defmodule Phone.ES.T do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(977|877)(.{6})/
  def area_name, do: "Tarragona"
  def area_type, do: "province"
  def area_abbreviation, do: "T"

  matcher(["34977", "34877"])
end