defmodule Phone.NF do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(672)(3)([25].{4})/
  def country, do: "Norfolk Island"
  def a2, do: "NF"
  def a3, do: "NFK"

  matcher(:regex, ["67232", "67235"])
end
