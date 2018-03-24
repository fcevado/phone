defmodule Phone.NANP.US.UT do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(385|435|801)([2-9].{6})$/
  def area_name, do: "Utah"
  def area_type, do: "state"
  def area_abbreviation, do: "UT"

  matcher(["1385", "1435", "1801"])
end
