defmodule Phone.NANP.CA.ON do
  use Helper.Area

  def regex, do: ~r/^(1)(226|249|289|343|365|416|437|519|548|613|647|705|807|905)([2-9].{6})$/
  def area_name, do: "Ontario"
  def area_type, do: "province"
  def area_abbreviation, do: "ON"

  matcher ["1226", "1249", "1289", "1343", "1365", "1416", "1437", "1519", "1548",
           "1613", "1647", "1705", "1807", "1905"]
end
