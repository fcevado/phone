defmodule Phone.SM do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(378)(0549)(.{6})/
  def country, do: "San Marino"
  def a2, do: "SM"
  def a3, do: "SMR"

  matcher(:regex, ["3780549"])
end
