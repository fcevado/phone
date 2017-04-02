defmodule Phone.NANP.US.GA do
  use Helper.Area

  def regex, do: ~r/^(1)(229|404|470|478|678|706|762|770|912)([2-9].{6})$/
  def area_name, do: "Georgia"
  def area_type, do: "state"
  def area_abbreviation, do: "GA"

  matcher ["1229", "1404", "1470", "1478", "1678", "1706", "1762", "1770", "1912"]
end
