defmodule Phone.BR.TollFree do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(55)(800)([0-9].{6,7})$/
  def country, do: "Brazil toll-free"
  def a2, do: "BR"
  def a3, do: "BRA"

  matcher(:regex, ["55800"])
end
