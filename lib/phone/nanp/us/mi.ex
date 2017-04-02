defmodule Phone.NANP.US.MI do
  use Helper.Area

  def regex, do: ~r/^(1)(231|248|269|313|517|586|616|734|810|906|947|989)([2-9].{6})$/
  def area_name, do: "Michigan"
  def area_type, do: "state"
  def area_abbreviation, do: "MI"

  matcher ["1231", "1248", "1269", "1313", "1517", "1586", "1616", "1734", "1810",
           "1906", "1947", "1989"]
end
