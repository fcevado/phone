defmodule Phone.NANP.CA.NS_PE do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(1)(902|782)([2-9].{6})$/
  def area_name, do: ["Nova Scotia","Prince Edward Island"]
  def area_type, do: "provinces"
  def area_abbreviation, do: ["NS","PE"]

  matcher ["1902", "1782"]
end
