defmodule Phone.ES.LE do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(987|887)(.{6})/
  def area_name, do: "León"
  def area_type, do: "province"
  def area_abbreviation, do: "LE"

  matcher(["34987", "34887"])
end
