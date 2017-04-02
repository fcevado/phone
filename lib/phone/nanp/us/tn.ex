defmodule Phone.NANP.US.TN do
  use Helper.Area

  def regex, do: ~r/^(1)(423|615|629|731|865|901|931)([2-9].{6})$/
  def area_name, do: "Tennessee"
  def area_type, do: "state"
  def area_abbreviation, do: "TN"

  matcher ["1423", "1615", "1629", "1731", "1865", "1901", "1931"]
end
