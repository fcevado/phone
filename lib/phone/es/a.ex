defmodule Phone.ES.A do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(96[5-6]|86[5-6])(.{6})/
  def area_name, do: "Alicante"
  def area_type, do: "province"
  def area_abbreviation, do: "A"

  matcher(["34965", "34966", "34865", "34866"])
end
