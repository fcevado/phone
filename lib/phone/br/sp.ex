defmodule Phone.BR.SP do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(55)(1[1-9])([2-5|89].{7}|9.{8}|7[07-9].{6})$/
  def area_name, do: "São Paulo"
  def area_type, do: "state"
  def area_abbreviation, do: "SP"

  matcher ["5511", "5512", "5513", "5514", "5515", "5516", "5517", "5518", "5519"]
end
