defmodule Phone.BR.RS do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(55)(5[1|3-5])([2-5|89].{7}|9[89].{7}|78.{6})$/
  def area_name, do: "Rio Grande do Sul"
  def area_type, do: "state"
  def area_abbreviation, do: "RS"

  matcher(["5551", "5552", "5553", "5554", "5555"])
end
