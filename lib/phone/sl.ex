defmodule Phone.SL do
  use Helper.Country

  def regex, do: ~r/^(232)(..)(.{6})/
  def country, do: "Sierra Leone"
  def a2, do: "SL"
  def a3, do: "SLE"

  matcher :regex, ["232"]
end
